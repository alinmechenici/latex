#!/bin/bash

###################################################################################
# NIS2 Template PDF Generation Script
# Supports both LaTeX (.tex) and Typst (.typ) files
###################################################################################

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║     NIS2 Compliance Template PDF Generator v2.0          ║${NC}"
echo -e "${BLUE}║     Supports LaTeX (.tex) and Typst (.typ) formats        ║${NC}"
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
}

# Create PDF directory if it doesn't exist
mkdir -p pdf

# Initialize counters
total_files=0
success_count=0
skip_count=0
error_count=0

# Arrays to track results
declare -a success_files
declare -a error_files
declare -a skipped_files

# Function to compile LaTeX file
compile_latex() {
    local source_file="$1"
    local output_name="$2"
    local dir="$3"

    if ! command -v pdflatex &> /dev/null; then
        echo -e "${YELLOW}  [SKIP]${NC} pdflatex not available"
        ((skip_count++))
        skipped_files+=("$output_name (LaTeX)")
        return 1
    fi

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

            echo -e "${GREEN}  [LaTeX OK]${NC}"
            ((success_count++))
            success_files+=("$output_name (LaTeX)")
            cd - > /dev/null
            return 0
        fi
    fi

    # Clean up on error
    rm -f *.aux *.log *.out *.toc *.lot *.lof
    cd - > /dev/null

    echo -e "${RED}  [LaTeX FAIL]${NC}"
    ((error_count++))
    error_files+=("$output_name (LaTeX)")
    return 1
}

# Function to compile Typst file
compile_typst() {
    local source_file="$1"
    local output_name="$2"

    if ! command -v typst &> /dev/null; then
        echo -e "${YELLOW}  [SKIP]${NC} Typst not available"
        ((skip_count++))
        skipped_files+=("$output_name (Typst)")
        return 1
    fi

    if typst compile "$source_file" "pdf/${output_name}.pdf" > /dev/null 2>&1; then
        echo -e "${GREEN}  [Typst OK]${NC}"
        ((success_count++))
        success_files+=("$output_name (Typst)")
        return 0
    else
        echo -e "${RED}  [Typst FAIL]${NC}"
        ((error_count++))
        error_files+=("$output_name (Typst)")
        return 1
    fi
}

# Function to process a template file
process_template() {
    local file="$1"
    local category="$2"
    local name="$3"

    ((total_files++))

    echo -e "${BLUE}[$total_files]${NC} Processing: $name"

    local extension="${file##*.}"
    local output_name="${category}-${name}"

    if [ "$extension" = "tex" ]; then
        local dir="$(dirname "$file")"
        compile_latex "$file" "$output_name" "$dir"
    elif [ "$extension" = "typ" ]; then
        compile_typst "$file" "$output_name"
    else
        echo -e "${YELLOW}  [SKIP]${NC} Unknown file type: $extension"
        ((skip_count++))
        skipped_files+=("$output_name")
    fi
}

# Check tools
check_tools

echo -e "${BLUE}Starting PDF generation...${NC}"
echo ""

# Process all templates by category
process_template "risk-management/risk-assessment-report.tex" "01-risk-management" "risk-assessment-report"
process_template "risk-management/risk-assessment-report.typ" "01-risk-management" "risk-assessment-report"

process_template "governance/cybersecurity-policy.tex" "02-governance" "cybersecurity-policy"
process_template "governance/asset-management-policy.tex" "02-governance" "asset-management-policy"
process_template "governance/data-classification-policy.tex" "02-governance" "data-classification-policy"
process_template "governance/remote-work-policy.tex" "02-governance" "remote-work-policy"
process_template "governance/acceptable-use-policy.tex" "02-governance" "acceptable-use-policy"
process_template "governance/backup-retention-policy.tex" "02-governance" "backup-retention-policy"

process_template "incident-response/incident-response-plan.tex" "03-incident-response" "incident-response-plan"

process_template "security-measures/access-control-policy.tex" "04-security-measures" "access-control-policy"

process_template "business-continuity/business-continuity-plan.tex" "05-business-continuity" "business-continuity-plan"
process_template "business-continuity/disaster-recovery-plan.tex" "05-business-continuity" "disaster-recovery-plan"

process_template "supply-chain/vendor-security-assessment.tex" "06-supply-chain" "vendor-security-assessment"

process_template "training-awareness/security-awareness-program.tex" "07-training-awareness" "security-awareness-program"

process_template "compliance-reporting/nis2-compliance-report.tex" "08-compliance" "nis2-compliance-report"

process_template "procedures/vulnerability-management-procedure.tex" "09-procedures" "vulnerability-management"
process_template "procedures/change-management-procedure.tex" "09-procedures" "change-management"

process_template "notifications/nis2-early-warning-24h.tex" "10-notifications" "24h-early-warning"
process_template "notifications/nis2-incident-notification-72h.tex" "10-notifications" "72h-notification"
process_template "notifications/nis2-final-report-1month.tex" "10-notifications" "1month-final-report"

process_template "playbooks/ransomware-response-playbook.tex" "11-playbooks" "ransomware-response"
process_template "playbooks/data-breach-response-playbook.tex" "11-playbooks" "data-breach-response"
process_template "playbooks/ddos-response-playbook.tex" "11-playbooks" "ddos-response"
process_template "playbooks/phishing-campaign-response-playbook.tex" "11-playbooks" "phishing-response"

process_template "forms/security-incident-report.tex" "12-forms" "incident-report"
process_template "forms/risk-acceptance-form.tex" "12-forms" "risk-acceptance"
process_template "forms/security-exception-request.tex" "12-forms" "exception-request"

process_template "audit/internal-security-audit-checklist.tex" "13-audit" "security-audit-checklist"

process_template "reports/penetration-test-report.tex" "14-reports" "penetration-test"
process_template "reports/dr-test-report.tex" "14-reports" "dr-test"
process_template "reports/executive-security-briefing.tex" "14-reports" "executive-briefing"

# Display summary
echo ""
echo -e "${BLUE}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║                    Generation Complete                     ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "Total files processed: ${BLUE}$total_files${NC}"
echo -e "${GREEN}✓ Successful:${NC} $success_count"
echo -e "${YELLOW}⚠ Skipped:${NC} $skip_count"
echo -e "${RED}✗ Errors:${NC} $error_count"
echo ""

if [ $success_count -gt 0 ]; then
    echo -e "${GREEN}Generated PDFs are in: pdf/${NC}"
    echo ""
fi

if [ $error_count -gt 0 ]; then
    echo -e "${RED}Failed templates:${NC}"
    for file in "${error_files[@]}"; do
        echo -e "  ${RED}✗${NC} $file"
    done
    echo ""
fi

if [ $skip_count -gt 0 ]; then
    echo -e "${YELLOW}Skipped templates:${NC}"
    for file in "${skipped_files[@]}"; do
        echo -e "  ${YELLOW}⚠${NC} $file"
    done
    echo ""
fi

# Exit with error code if there were failures
if [ $error_count -gt 0 ]; then
    exit 1
fi

echo -e "${GREEN}All templates generated successfully!${NC}"
exit 0
