function _git_color
  set -l head '?'
  set -l color 'red'
  set -l git (command git status -b --porcelain ^/dev/null | egrep -o '^((##.*)|(..))')

  if test -n "$git"
    if test $git[1] = '## master'
      set head '◦'
    else
      set -l b (echo $git[1] | egrep -o '((ahead)|(behind))')
      if test "$b" = 'ahead'
        set head '↑'
      else
        if test "$b" = 'behind'
          set head '↓'
        else
          set head '⥄'
        end
      end
    end

    set -l n (count $git)
    if test $n -gt 1
      if test $git[2] = '??'
        set color 'magenta'
      else
        set head '⨯'
      end
    else
      if test "$head" = '◦'
        set color 'green'
      else
        set color 'yellow'
      end
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
