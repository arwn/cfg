function e --wraps='emacs -nw' --wraps=nvim --wraps=emacsclient --description 'alias e emacsclient'
  emacsclient $argv; 
end
