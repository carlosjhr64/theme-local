function _is_git_dirty
  # Modified from Krisleech theme...
  echo (command git status --porcelain --ignore-submodules=dirty ^/dev/null)
end

function fish_right_prompt
  set -l code $status
  set -l normal (set_color normal)
  set -l color $normal
  if test -e .git
    set color (set_color green)
    if [ (_is_git_dirty) ]
      set color (set_color red)
    end
  end
  set -l d (date '+%T')
  echo -n -s $color $d $normal
end
