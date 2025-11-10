#!/bin/bash

###################################################################################
# NIS2 Template PDF Generation Script (Enhanced - Auto-discovery)
# Automatically discovers and compiles ALL .tex and .typ files
###################################################################################

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${BLUE}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║     NIS2 Compliance Template PDF Generator v2.1          ║${NC}"
echo -e "${BLUE}║     Auto-discovers LaTeX and Typst templates              ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Check for required tools
check_tools() {
    local has_pdflatex=false
    local has_typst=false

    if command -v pdflatex &> /dev/null; then
        has_pdflatex=true
        echo -e "${GREEN}✓${NC} pdflatex found: $(pdflatex --version | head -n1)"
    else
        echo -e "${YELLOW}⚠${NC} pdflatex not found (LaTeX files will be skipped)"
    fi

    if command -v typst &> /dev/null; then
        has_typst=true
        echo -e "${GREEN}✓${NC} Typst found: $(typst --version)"
    else
        echo -e "${YELLOW}⚠${NC} Typst not found (Typst files will be skipped)"
        echo -e "${YELLOW}  Install: curl -fsSL https://typst.app/install.sh | sh${NC}"
    fi

    if [ "$has_pdflatex" = false ] && [ "$has_typst" = false ]; then
        echo -e "${RED}✗ Error: Neither pdflatex nor typst found!${NC}"
        echo ""
        echo "Please install at least one:"
        echo "  LaTeX: sudo apt-get install texlive-full"
        echo "  Typst: curl -fsSL https://typst.app/install.sh | sh"
        exit 1
    fi

    echo ""

    # Return values
    echo "$has_pdflatex:$has_typst"
}

# Create PDF directory if it doesn't exist
mkdir -p pdf

# Initialize counters
total_files=0
success_count=0
skip_count=0
error_count=0
latex_success=0
typst_success=0

# Arrays to track results
declare -a success_files
declare -a error_files
declare -a skipped_files

# Function to compile LaTeX file
compile_latex() {
    local source_file="$1"
    local output_name="$2"
    local dir="$3"

    cd "$dir"

    # Compile twice for TOC and cross-references
    if pdflatex -interaction=nonstopmode -output-directory=. "$(basename "$source_file")" > /dev/null 2>&1 && \
       pdflatex -interaction=nonstopmode -output-directory=. "$(basename "$source_file")" > /dev/null 2>&1; then

        # Move PDF to pdf directory
        local pdf_file="${source_file%.tex}.pdf"
        if [ -f "$(basename "$pdf_file")" ]; then
            mv "$(basename "$pdf_file")" "../../pdf/${output_name}.pdf"

            # Clean up auxiliary files
            rm -f *.aux *.log *.out *.toc *.lot *.lof

            echo -e "${GREEN}  ✓ LaTeX OK${NC}"
            ((success_count++))
            ((latex_success++))
            success_files+=("$output_name (LaTeX)")
            cd - > /dev/null
            return 0
        fi
    fi

    # Clean up on error
    rm -f *.aux *.log *.out *.toc *.lot *.lof
    cd - > /dev/null

    echo -e "${RED}  ✗ LaTeX FAIL${NC}"
    ((error_count++))
    error_files+=("$output_name (LaTeX)")
    return 1
}

# Function to compile Typst file
compile_typst() {
    local source_file="$1"
    local output_name="$2"

    if typst compile "$source_file" "pdf/${output_name}-typst.pdf" > /dev/null 2>&1; then
        echo -e "${GREEN}  ✓ Typst OK${NC}"
        ((success_count++))
        ((typst_success++))
        success_files+=("$output_name (Typst)")
        return 0
    else
        echo -e "${RED}  ✗ Typst FAIL${NC}"
        ((error_count++))
        error_files+=("$output_name (Typst)")
        return 1
    fi
}

# Get tool availability
tools_result=$(check_tools)
has_pdflatex=$(echo "$tools_result" | cut -d: -f1)
has_typst=$(echo "$tools_result" | cut -d: -f2)

echo -e "${CYAN}Discovering templates...${NC}"
echo ""

# Discover all .tex and .typ files (excluding examples and generated files)
declare -A template_pairs

# Find all .tex files
while IFS= read -r tex_file; do
    # Skip if in examples or pdf directories
    if [[ "$tex_file" =~ examples/ ]] || [[ "$tex_file" =~ pdf/ ]]; then
        continue
    fi

    # Get the base name without extension
    base="${tex_file%.tex}"
    template_pairs["$base"]=1
done < <(find . -name "*.tex" -type f)

# Find all .typ files and add to pairs
while IFS= read -r typ_file; do
    base="${typ_file%.typ}"
    template_pairs["$base"]=1
done < <(find . -name "*.typ" -type f)

# Count unique templates
num_templates=${#template_pairs[@]}
echo -e "${CYAN}Found ${num_templates} unique templates${NC}"
echo ""

# Process each template
for base_path in "${!template_pairs[@]}"; do
    ((total_files++))

    # Extract category and filename
    rel_path="${base_path#./}"
    category=$(dirname "$rel_path")
    filename=$(basename "$rel_path")

    # Create output name
    category_short=$(echo "$category" | tr '/' '-')
    output_name="${category_short}-${filename}"

    echo -e "${BLUE}[$total_files/${num_templates}]${NC} ${CYAN}$rel_path${NC}"

    # Try LaTeX version if it exists
    if [ -f "${base_path}.tex" ]; then
        if [ "$has_pdflatex" = "true" ]; then
            dir=$(dirname "${base_path}.tex")
            compile_latex "${base_path}.tex" "$output_name" "$dir"
        else
            echo -e "${YELLOW}  ⊘ LaTeX skipped (pdflatex not available)${NC}"
            ((skip_count++))
            skipped_files+=("$output_name (LaTeX)")
        fi
    fi

    # Try Typst version if it exists
    if [ -f "${base_path}.typ" ]; then
        if [ "$has_typst" = "true" ]; then
            compile_typst "${base_path}.typ" "$output_name"
        else
            echo -e "${YELLOW}  ⊘ Typst skipped (typst not available)${NC}"
            ((skip_count++))
            skipped_files+=("$output_name (Typst)")
        fi
    fi

    echo ""
done

# Display summary
echo -e "${BLUE}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║                    Generation Complete                     ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "Total templates processed: ${BLUE}$total_files${NC}"
echo -e "${GREEN}✓ Successful:${NC} $success_count (LaTeX: $latex_success, Typst: $typst_success)"
echo -e "${YELLOW}⊘ Skipped:${NC} $skip_count"
echo -e "${RED}✗ Errors:${NC} $error_count"
echo ""

if [ $success_count -gt 0 ]; then
    echo -e "${GREEN}Generated PDFs are in: pdf/${NC}"
    ls -lh pdf/*.pdf 2>/dev/null | wc -l | xargs -I {} echo -e "  Total PDF files: {}"
    echo ""
fi

if [ $error_count -gt 0 ]; then
    echo -e "${RED}Failed templates:${NC}"
    for file in "${error_files[@]}"; do
        echo -e "  ${RED}✗${NC} $file"
    done
    echo ""
    echo -e "${YELLOW}Tip: Check template syntax and dependencies${NC}"
    echo ""
fi

# Performance stats
if [ $success_count -gt 0 ]; then
    echo -e "${CYAN}Format Comparison:${NC}"
    echo -e "  LaTeX files compiled: $latex_success"
    echo -e "  Typst files compiled: $typst_success"
    if [ $typst_success -gt 0 ] && [ $latex_success -gt 0 ]; then
        echo -e "  ${GREEN}Typst is typically 10-100x faster!${NC}"
    fi
    echo ""
fi

# Exit with error code if there were failures
if [ $error_count -gt 0 ]; then
    exit 1
fi

echo -e "${GREEN}✓ All templates generated successfully!${NC}"
exit 0
