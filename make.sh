#!/bin/zsh

#/Users/dmitriyivkov/bin/pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=/Users/dmitriyivkov/IdeaProjects/tex/PS3/out -include-directory=/Users/dmitriyivkov/IdeaProjects/tex/PS1/src main.tex

dirs=($(ls -1))

for item in "${dirs[@]}"; do
  if [[ "$item" =~ PS.*$ ]]; then
    output="/Users/dmitriyivkov/IdeaProjects/tex/${item}/out";
    input="/Users/dmitriyivkov/IdeaProjects/tex/${item}/src";
    /Users/dmitriyivkov/bin/pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=$output -include-directory=$input main.tex
  fi
done