@default_files     = ('absint.tex');
$out_dir           = './build';
$pdf_mode          = 1;
$pdf_update_method = 1;
$postscript_mode   = 0;
$dvi_mode          = 0;
$pdflatex          = 'pdflatex %O -shell-escape %S';

# find the packages of this repository without installing them
$ENV{'TEXINPUTS'} = '..:' . ($ENV{'TEXINPUTS'} // '');
