@default_files     = ('absint.tex');
$out_dir           = './build';
$pdf_mode          = 1;
$pdf_update_method = 1;
$postscript_mode   = 0;
$dvi_mode          = 0;

# find the package and the xlistings submodule without installing them
$ENV{'TEXINPUTS'} = '..:../xlistings//:' . ($ENV{'TEXINPUTS'} // '');
