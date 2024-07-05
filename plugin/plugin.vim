aug filetype_edisch
	autocmd!
	autocmd BufRead,BufNewFile *.edisch syntax match edischComment /^.\+\t\zs.*\ze$/
	autocmd BufRead,BufNewFile *.edisch highlight link edischComment Comment
	autocmd BufRead,BufNewFile *.edisch call edisch#adjust_shiftwidth()
	autocmd BufRead,BufNewFile *.edisch autocmd InsertLeave <buffer> call edisch#adjust_shiftwidth()
aug END
