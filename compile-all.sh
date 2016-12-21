#!/bin/bash
#
# quick & dirty compilation script for compiling to multiple languages at once
#

MAIN_FILE="main.tex"
EN_OUTPUT_BASENAME="cv-en"
DE_OUTPUT_BASENAME="cv-de"

pdflatex --jobname $EN_OUTPUT_BASENAME "\def\languageEn{1} \input{$MAIN_FILE}" 
pdflatex --jobname $EN_OUTPUT_BASENAME "\def\languageEn{1} \input{$MAIN_FILE}" 

pdflatex --jobname $DE_OUTPUT_BASENAME "\def\languageDe{1} \input{$MAIN_FILE}"
pdflatex --jobname $DE_OUTPUT_BASENAME "\def\languageDe{1} \input{$MAIN_FILE}"

pdflatex --jobname main "\def\enableTodoNodes{1} \input{$MAIN_FILE}"
pdflatex --jobname main "\def\enableTodoNodes{1} \input{$MAIN_FILE}"

pdflatex --jobname draft "\def\enableDraft{1} \def\enableTodoNodes{1} \input{$MAIN_FILE}"
pdflatex --jobname draft "\def\enableDraft{1} \def\enableTodoNodes{1} \input{$MAIN_FILE}"
