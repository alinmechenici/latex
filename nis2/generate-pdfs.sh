#!/bin/bash

# NIS2 PDF Generation Script
# This script compiles all LaTeX templates into PDFs

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Create pdf output directory if it doesn't exist
mkdir -p pdf

echo -e "${BLUE}=== NIS2 Template PDF Generation ===${NC}\n"

# Check if pdflatex is installed
if ! command -v pdflatex &> /dev/null; then
    echo -e "${RED}Error: pdflatex is not installed${NC}"
    echo "Please install LaTeX:"
    echo "  Ubuntu/Debian: sudo apt-get install texlive-latex-extra texlive-fonts-recommended"
    echo "  macOS: brew install --cask mactex"
    echo "  Windows: Download MiKTeX from https://miktex.org/"
    exit 1
fi

# Create a simple placeholder logo if it doesn't exist
if [ ! -f "logo.png" ]; then
    echo -e "${YELLOW}Creating placeholder logo...${NC}"
    if command -v convert &> /dev/null; then
        convert -size 200x80 xc:white -pointsize 20 -fill "#003399" \
            -gravity center -annotate +0+0 "NIS2\nCompliance" logo.png
        echo -e "${GREEN}✓ Placeholder logo created${NC}\n"
    else
        echo -e "${YELLOW}Warning: ImageMagick not found. Creating minimal logo...${NC}"
        # Create a minimal 1x1 white PNG as fallback
        printf '\x89\x50\x4e\x47\x0d\x0a\x1a\x0a\x00\x00\x00\x0d\x49\x48\x44\x52\x00\x00\x00\x01\x00\x00\x00\x01\x08\x02\x00\x00\x00\x90\x77\x53\xde\x00\x00\x00\x0c\x49\x44\x41\x54\x08\xd7\x63\xf8\xff\xff\x3f\x00\x05\xfe\x02\xfe\xdc\xcc\x59\xe7\x00\x00\x00\x00\x49\x45\x4e\x44\xae\x42\x60\x82' > logo.png
        echo -e "${GREEN}✓ Minimal logo created${NC}\n"
    fi
fi

# Function to compile a LaTeX document
compile_latex() {
    local source_file=$1
    local output_name=$2
    local category=$3

    echo -e "${BLUE}Compiling: ${category}${NC}"

    # Copy logo to the working directory
    cp logo.png "$(dirname "$source_file")/" 2>/dev/null

    # Change to the directory containing the source file
    cd "$(dirname "$source_file")" || return 1

    # Compile twice for TOC and references
    pdflatex -interaction=nonstopmode -output-directory=. "$(basename "$source_file")" > /dev/null 2>&1
    pdflatex -interaction=nonstopmode -output-directory=. "$(basename "$source_file")" > /dev/null 2>&1

    # Check if PDF was created
    local pdf_file="${source_file%.tex}.pdf"
    if [ -f "$(basename "$pdf_file")" ]; then
        # Move PDF to the pdf directory
        mv "$(basename "$pdf_file")" "../../pdf/${output_name}.pdf"
        echo -e "${GREEN}✓ Generated: pdf/${output_name}.pdf${NC}"

        # Clean up auxiliary files
        rm -f *.aux *.log *.out *.toc *.nav *.snm 2>/dev/null
        rm -f logo.png 2>/dev/null

        cd - > /dev/null
        return 0
    else
        echo -e "${RED}✗ Failed to generate PDF${NC}"
        cd - > /dev/null
        return 1
    fi
}

# Counter for success/failure
success_count=0
fail_count=0

# Compile all templates
echo "Starting compilation of all templates..."
echo ""

# Risk Management
if compile_latex "risk-management/risk-assessment-report.tex" "01-risk-assessment-report" "Risk Assessment Report"; then
    ((success_count++))
else
    ((fail_count++))
fi

# Governance
if compile_latex "governance/cybersecurity-policy.tex" "02-cybersecurity-policy" "Cybersecurity Policy"; then
    ((success_count++))
else
    ((fail_count++))
fi

# Incident Response
if compile_latex "incident-response/incident-response-plan.tex" "03-incident-response-plan" "Incident Response Plan"; then
    ((success_count++))
else
    ((fail_count++))
fi

# Security Measures
if compile_latex "security-measures/access-control-policy.tex" "04-access-control-policy" "Access Control Policy"; then
    ((success_count++))
else
    ((fail_count++))
fi

# Business Continuity
if compile_latex "business-continuity/business-continuity-plan.tex" "05-business-continuity-plan" "Business Continuity Plan"; then
    ((success_count++))
else
    ((fail_count++))
fi

# Supply Chain
if compile_latex "supply-chain/vendor-security-assessment.tex" "06-vendor-security-assessment" "Vendor Security Assessment"; then
    ((success_count++))
else
    ((fail_count++))
fi

# Training & Awareness
if compile_latex "training-awareness/security-awareness-program.tex" "07-security-awareness-program" "Security Awareness Program"; then
    ((success_count++))
else
    ((fail_count++))
fi

# Compliance & Reporting
if compile_latex "compliance-reporting/nis2-compliance-report.tex" "08-nis2-compliance-report" "NIS2 Compliance Report"; then
    ((success_count++))
else
    ((fail_count++))
fi

# Summary
echo ""
echo -e "${BLUE}=== Compilation Summary ===${NC}"
echo -e "${GREEN}Successful: ${success_count}${NC}"
if [ $fail_count -gt 0 ]; then
    echo -e "${RED}Failed: ${fail_count}${NC}"
fi
echo ""

if [ $success_count -eq 8 ]; then
    echo -e "${GREEN}✓ All templates compiled successfully!${NC}"
    echo -e "PDFs are available in the ${BLUE}pdf/${NC} directory"
    exit 0
else
    echo -e "${YELLOW}⚠ Some templates failed to compile${NC}"
    echo "Check for missing LaTeX packages or syntax errors"
    exit 1
fi
