OUT_DIR  := "build"
RENDER_DIR := "notes-rendered"

default: build

build:
    latexmk -pdf -outdir={{OUT_DIR}} main.tex
    mkdir -p {{RENDER_DIR}}
    cp {{OUT_DIR}}/main.pdf {{RENDER_DIR}}/notes.pdf

clean:
    latexmk -C -outdir={{OUT_DIR}} main.tex
