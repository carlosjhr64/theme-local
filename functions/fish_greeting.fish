function fish_greeting
  if test -e .config.fish
    source .config.fish
  end
  if test -e .greeting
    cat .greeting
  end
end
