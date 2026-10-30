# CLAUDE.md — Álgebra Lineal y Geometría I

Instrucciones para Claude al trabajar en este repositorio.

## Descripción del proyecto

Transparencias en LaTeX/Beamer para **Álgebra Lineal y Geometría I**
(Grado en Matemáticas, Universidad de Sevilla, curso 2026–27).

El tema Beamer está en `beamerteaching/` como submódulo
(repositorio: https://github.com/FMuro/beamerteaching).

## Compilación

```sh
git submodule update --init --recursive
latexmk -pdf main.tex
```

Compatible con **pdfLaTeX**, **TeX Live en macOS** y **Texifier en iPad**.
No introducir dependencias que rompan ninguno de estos entornos.

## Estructura del repositorio

```
main.tex                                  ← preámbulo global, macros y ensamblaje
beamerteaching/                           ← submódulo con el tema Beamer
temas/
  01-sistemas-matrices-determinantes/
    tema01.tex                            ← declara la sección e incluye los archivos
    teoria/
    ejercicios/
  02-espacios-vectoriales/
    tema02.tex
    teoria/
    ejercicios/
  ...
  11-movimientos/
    tema11.tex
    teoria/
    ejercicios/
```

Ningún archivo `.tex` importante comparte nombre con otro en todo el repositorio.
Los archivos principales de tema se llaman `tema01.tex`, …, `tema11.tex`.

## Macros definidas en main.tex

No redefinir estas macros:

```latex
\N  \Z  \Q  \R  \C  \K
\Mat   \rg   \im   \id   \deg
\alertcolor      % rojo US (color de \alert)
\secondarycolor  % amarillo US (línea de frame)
```

---

## Reglas de estilo (vinculantes)

### Lengua y nivel

- Español. Nivel de primer curso del Grado en Matemáticas.
- Rigor matemático alto; lenguaje natural, no telegráfico ni prolijo.

### Demostraciones

- Completas y con verdadero contenido para los resultados importantes.
- Secuencia: indicar qué se pretende → pasos esenciales → justificar los
  pasos no evidentes → concluir explícitamente.
- Frames largos: usar `[allowframebreaks]`, nunca comprimir.
- **No usar `\pause`.**
- Se puede separar «idea de la demostración» de la demostración formal
  cuando sea pedagógicamente útil, pero no es obligatorio.

### Frames

- Una idea pedagógica principal por frame: definición, propiedad, ejemplo,
  paso de una demostración, ejercicio… Sin mezclar ideas independientes
  para ahorrar páginas.
- El PDF debe ser legible página a página, sin depender de animaciones.

### Énfasis y entornos

- Énfasis visual: `\alert{}`, nunca `\emph{}` como recurso principal.
  Usar con moderación: solo la palabra o idea clave.
- **No usar `\boxed{}`.**
- Nombres de entornos LaTeX en inglés:
  `theorem`, `proposition`, `lemma`, `corollary`,
  `definition`, `example`, `exercise`, `proof`, `solution`.
- Cuerpos: cursiva en `theorem`, `proposition`, `lemma`, `corollary`;
  redonda en `definition`, `example`, `proof`, `exercise`, `solution`.

### Notación matemática

- Cuerpo base: $k$ (no alternar con $\mathbb{K}$, $K$, $\mathbb{F}$…).
- Vectores: $v, w, u$ y familias $v_1,\ldots,v_r$.
- Coordenadas: $v_i$ por defecto (no introducir $x_i$ salvo que sea necesario).
- Vectores de $k^n$ escritos como tuplas $(v_1,\ldots,v_n)$, **sin** símbolo
  de traspuesta: nunca $(v_1,\ldots,v_n)^T$ ni $(v_1,\ldots,v_n)^t$.
- Dependencia lineal: existencia de $\lambda_1 v_1+\cdots+\lambda_r v_r=0$
  con los $\lambda_i$ no todos nulos.
- Independencia lineal: $\lambda_1 v_1+\cdots+\lambda_r v_r=0
  \Rightarrow \lambda_1=\cdots=\lambda_r=0$.
  Ambas definidas directamente; ninguna como mera negación de la otra.
- Familias y conjuntos: alternar $v_1,\ldots,v_r$ y $\{v_1,\ldots,v_r\}$
  según lo que sea más natural. Sin formalismo excesivo sobre la distinción.
- Matrices: $A=(a_{ij})$. Producto: fila por columna primero,
  fórmula general $(AB)_{ij}=\sum_k a_{ik}b_{kj}$ después.
- Notación de operaciones elementales: $F_i\leftrightarrow F_j$,
  $F_i - \lambda F_j$.

### Gauss y rango

- Reutilizar Gauss y el rango del Tema 1 para independencia, generación
  y bases en $k^n$: rango $n$ ↔ genera; rango $r$ ↔ independiente;
  ambas ↔ base.
- Escalonar solo hasta donde sea necesario para responder la pregunta;
  normalmente forma escalonada, no reducida.
- En cálculos largos, hacer visible la estrategia, no registrar cada
  operación aritmética.

### Ejemplos

- Abundantes: $k^n$, espacios de polinomios y espacios de matrices
  deben aparecer repetidamente.
- Los primeros ejemplos de una noción pueden ser sencillos;
  al menos uno debe exigir usar realmente la definición.
- Cuando una construcción pueda parecer artificial, empezar con un
  ejemplo concreto y abstraer después.
- Incluir contraejemplos cuando distingan conceptos próximos
  (generar vs. ser independiente, base vs. sistema generador, etc.).

### Ejercicios

- Distribución aproximada: 3/4 teoría, 1/4 ejercicios.
- Tres niveles: comprobación rápida de una definición; ejercicio de
  clase (15–30 min); problema de nivel examen.
- Los ejercicios sirven para aplicar definiciones y teoremas,
  no solo para ejecutar algoritmos.
- Soluciones suficientemente desarrolladas; divisibles con
  `[allowframebreaks]`; sin sacrificar pasos importantes.

### Secuencia pedagógica general

```
definición → ejemplos → resultados → demostraciones → ejercicios
```

No aplicar mecánicamente; prevalece la exposición natural.

---

## Flujo de trabajo

Este repositorio se edita desde dos entornos:

- **VS Code con Claude Code** (macOS): edición directa de archivos,
  compilación con `latexmk`.
- **claude.ai + Texifier** (iPad): planificación de contenido y
  edición más ligera; compilación con Texifier.

Al generar o editar código LaTeX, asegurarse de que sea compatible
con pdfLaTeX y no requiera paquetes ausentes en una instalación
estándar de TeX Live o en Texifier.
