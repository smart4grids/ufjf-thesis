
![Contributors](https://img.shields.io/github/contributors/smart4grids/ufjf-thesis)
![GitHub Workflow Status (with event)](https://img.shields.io/github/actions/workflow/status/smart4grids/ufjf-thesis/latex-build.yml)
![GitHub all releases](https://img.shields.io/github/downloads/smart4grids/ufjf-thesis/total)



![LaTeX](https://img.shields.io/badge/latex-%23008080.svg?style=for-the-badge&logo=latex&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)


# UFJF Thesis Template

## Overview

This repository contains a LaTeX template specifically designed for creating a thesis or dissertation at the Universidade Federal de Juiz de Fora (UFJF). It provides a structured and easy-to-use format for UFJF students to write their theses, ensuring adherence to the university's formatting guidelines.

## Project Structure

The thesis project is organized into several directories and files. The directories are named using a prefix number just for improved navigation, making it intuitive to understand in which order the files are imported within the `thesis.tex` file:

- `0-configuration/`: Files and other configurations specific to UFJF standards.
- `1-preTextual/`: Contains pre-textual elements like cover page, abstract, acknowledgements, list of figures, and list of tables.
- `2-chapters/`: Contains individual chapters of the thesis, such as introduction, problem scope, mathematical analysis, and conclusion.
- `3-apendix/`: Includes appendices and large tables.
- `.gitignore`: Specifies intentionally untracked files to ignore.
- `abntbibufjf.cls`: Configuration for ABNT and Bibliography applied to UFJF standards.
- `bibliography.bib`: The references, using BibTex as compiler.
- `LICENSE`: MIT License, typical for open source projects.
- `Makefile`: A Makefile for building and cleaning the LaTeX project.
- `README.md`: This file, explaining the project structure and compilation instructions.
- `thesis.tex`: The main LaTeX file that includes all other parts.

## Installation

Before you start, ensure you have a LaTeX distribution installed on your system (like TeX Live, MiKTeX, or MacTeX). I recomend TexLive, since the commands are already prepared in the `Makefile`.

## Compilation

To compile the document, follow these steps:

1. **Clone the Repository**:

   ```
   git clone [repository-url]
   cd [repository-directory]
   ```

2. **Build the Thesis**:

   > In case you are using Unix based systems, such as Linux or MacOS, the provided `Makefile` is already prepared to facilitate building and cleaning the project.

   If you use Windows, your configured IDE will probably compile the `thesis.tex` file automatically into `thesis.pdf`, but all the auxiliary files will be kept in your project, which you can clean after compilation.

   > Even if you use Windows, I highly recomend configuring WSL (Windows Subsystem Linux) and using Linux environments for programming.

   Use the Makefile to compile the document.

   ```Shell
   make build
   ```

   This command compiles the `thesis.tex` file into a PDF, using `pdflatex`.

3. **Clean Auxiliary Files**:

   After compilation, you can clean up auxiliary files generated by LaTeX.

   ```
   make clean
   ```

   Alternatively, to build and clean in one step, run:

   ```
   make all
   ```

## Usage

It is very likely that you will not need to interact with `thesis.tex` file, unless you need more `LaTeX` packages. Otherwise, replace the contents of the `0-configuration`, `1-preTextual`, `2-chapters` and `3-apendix` directories with the content of your work, always adhering to the provided structure.

## Contributions

This template is specifically tailored for UFJF theses. However, contributions or suggestions for improvements are welcome. Please ensure any modifications adhere to UFJF's thesis formatting guidelines.

I would like to ackowledge [João Pedro Peters](https://github.com/joaoppeters), for stablishing the basis for this template.

## License

MIT

## Contact

Ettore Aquino - [ettore.aquino@engenharia.ufjf.br](ettore.aquino@engenharia.ufjf.br)
