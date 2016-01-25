function _git_color
  set -l ahead    "↑"
  set -l behind   "↓"
  set -l diverged "⥄ "
  set -l dirty    "⨯"
  set -l none     "◦"
  set -l head (git_ahead $ahead $behind $diverged $none)

  set -l color "green"
  set -l git (command git status --porcelain ^/dev/null | egrep -o '^(..)')
  if test -n "$git"
    if test $git[1] = "??"
      set color "magenta"
    else
      set color "red"
      set head $dirty
    end
  else
    if test "$head" != "$none"
      set color "yellow"
    end
  end

  echo -n -s (set_color $color) $head
end

function fish_right_prompt
  set -l code $status
  set -l normal (set_color normal)
  set -l color $normal
  if test -e .git
    set color (_git_color)
  end
  set -l d (date '+%T')
  echo -n -s $color $d $normal
end
