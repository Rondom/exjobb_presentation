#!/bin/sh
NAME="finalpresentation.tex"
BASENAME="$(basename "$NAME" .tex)"
LATEX=lualatex

"$LATEX" -shell-escape $NAME
"$LATEX" -shell-escape $NAME

"$LATEX" -shell-escape "-jobname=${BASENAME}_shownotesright" "\def\shownotesright{}\input{$NAME}"
"$LATEX" -shell-escape "-jobname=${BASENAME}_shownotesright" "\def\shownotesright{}\input{$NAME}"

"$LATEX" -shell-escape "-jobname=${BASENAME}_shownotesonly" "\def\shownotesonly{}\input{$NAME}"
"$LATEX" -shell-escape "-jobname=${BASENAME}_shownotesonly" "\def\shownotesonly{}\input{$NAME}"
