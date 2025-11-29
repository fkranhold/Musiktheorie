This repository contains the source code for two German documents about music
theory: A “Skript” (lecture notes) and a set of “Aufgaben” (exercises). In order
to compile these two documents, proceed as follows:

## Dependencies

Make sure you have installed the following applications:

 - pdflatex and biber (preferably a full TeX distro),
 - the `classico` package ([Link](https://ctan.org/pkg/classico)),
 - pdfcrop (which is part of a full TeX distro), and
 - lilypond

## Compile Examples

The subfolder `./ly` contains various music examples written in LilyPond.  In
order to translate these files into scores, run the `compile-all` script that
lies within the same folder, e.g. by calling (from within `./ly`):

    bash compile-all

After running the script, the `./ly` directory should contain various PDF files.

## Compile the main document

Finally, compile `Skript.tex` and `Aufgaben.tex` in the main directory.  It
requires the TeX files inside the `./fig` subfolder, PDFs from `./ly` that we
created in step 2, as well as all files inside the main folder.  As usual, the
LaTeX procedure comprises several steps.  We should be fine after running
`pdflatex` once, then `biber` once, and then `pdflatex` twice.
