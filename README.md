# Álgebra Lineal y Geometría I

Transparencias en LaTeX/Beamer para la asignatura **Álgebra Lineal y
Geometría I** del Grado en Matemáticas de la Universidad de Sevilla.

## Organización

- `main.tex`: preámbulo común, paquetes, comandos y orden global.
- `beamerteaching/`: tema Beamer, incorporado como submódulo.
- `temas/`: una carpeta por tema del proyecto docente.
- `teoria/` y `ejercicios/`: unidades temáticas de teoría y hojas de
  ejercicios, respectivamente.

El archivo `tema.tex` de cada tema actúa como índice: declara la sección e
incluye, en orden, los archivos de sus dos subcarpetas.

## Compilación

```sh
git submodule update --init --recursive
latexmk -pdf main.tex
```
