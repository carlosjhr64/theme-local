function fish_prompt
  set -l code $status
  set -l normal (set_color -o normal)
  set -l color (set_color -o blue)
  if test "$code" != "0"
    set color (set_color -o red)
  end
  set -l prompt '> '
  if test -e .prompt
    set prompt (cat .prompt)
  else
    set prompt (basename (pwd)) $prompt
  end
  echo -n -s $color $prompt $normal
end
