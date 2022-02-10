for f in split(glob('~/AppData/Local/nvim/.config/*.vim'), '\n')
   exe 'source' f
endfor
