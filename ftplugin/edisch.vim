autocmd ColorScheme * highlight link edischComment Comment
doautocmd ColorScheme

call edisch#adjust_shiftwidth()
autocmd InsertLeave <buffer> call edisch#adjust_shiftwidth()
