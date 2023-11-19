# Makefile for building and cleaning LaTeX project with suppressed outputs and visual enhancements

# Path to the main LaTeX file
MAIN_TEX = thesis.tex
MAIN_PDF = thesis.pdf

# Color and emoji settings
GREEN = \033[0;32m
YELLOW = \033[0;33m
RED = \033[0;31m
NO_COLOR = \033[0m

# Build target for compiling the LaTeX project
build:
	@echo "${YELLOW}🔧 Building $(MAIN_TEX)...${NO_COLOR}"
	@pdflatex $(MAIN_TEX) > /dev/null
	@bibtex $(basename $(MAIN_TEX)) > /dev/null
	@pdflatex $(MAIN_TEX) > /dev/null
	@pdflatex $(MAIN_TEX) > /dev/null
	@echo "${GREEN}📕 $(MAIN_PDF) build completed!${NO_COLOR}"
	@echo ""
	

# Target for cleaning up auxiliary files recursively
clean:
	@echo "${YELLOW}🗑️  Cleaning auxiliary files...${NO_COLOR}"
	@find . -name '*.aux' -type f -delete
	@find . -name '*.bbl' -type f -delete
	@find . -name '*.blg' -type f -delete
	@find . -name '*.fdb_latexmk' -type f -delete
	@find . -name '*.fls' -type f -delete
	@find . -name '*.lof' -type f -delete
	@find . -name '*.log' -type f -delete
	@find . -name '*.lot' -type f -delete
	@find . -name '*.gz' -type f -delete
	@find . -name '*.toc' -type f -delete
	@echo "${GREEN}♻️  Clean up completed!${NO_COLOR}"

# Build and then clean
all: build clean

# PHONY target to ensure that 'build', 'clean', and 'all' are run as commands
.PHONY: build clean all