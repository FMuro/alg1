$pdf_mode = 1;
$pdflatex = 'pdflatex -interaction=nonstopmode -halt-on-error -file-line-error %O %S';
$clean_ext .= ' %R.nav %R.snm %R.vrb';

# Documentos principales: transparencias y apuntes (preambulo.tex no se compila solo).
@default_files = ('main.tex', 'apuntes.tex');
