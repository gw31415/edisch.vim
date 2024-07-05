fu! edisch#adjust_shiftwidth()
	" 現在のバッファ内容をリストに読み込む
	let lines = getline(1, '$')
	
	" 1列目の最大文字幅を計算
	let max_len = 0
	for line in lines
		let cols = split(line, "\t")
		if len(cols) > 0
			let col_len = strwidth(cols[0])
			if col_len > max_len
				let max_len = col_len
			endif
		endif
	endfor

	let width = max_len + 4
	
	" shiftwidthを1列目の最大文字幅に設定
	exe 'setl shiftwidth=' . width
	exe 'setl tabstop=' . width
endfu
