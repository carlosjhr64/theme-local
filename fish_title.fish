function fish_title
  set -l title ''
  if test -e .title
    set title (cat .title)
  else
    set title (basename (pwd))
  end
  if test -e data/VERSION
    set title $title ' ' (cat data/VERSION)
  end
  if test -e .ruby-version
    set title $title ' / ' (cat .ruby-version)
  end
  echo -n -s $title "   "
end
