<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="144px" height="144px"/>

#### local
> A theme for [Oh My Fish][omf-link].

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v2.2.0-007EC7.svg?style=flat-square)](http://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>

## Install

If it gets registered, one should be able to run:

```fish
$ omf install local
```

Otherwise, cloning this git to ~/.config/omf/themes/local should also work.

## Features

* Greeting from .greeting file in the working directory.

No greeting is given if .greeting is absent.

* Prompt from .prompt file in the working directory.

If .prompt is absent, defaults to "basename> ".

* Blue prompt on success, red on error.

* Short timestamp for right prompt.

* Right prompt is green when git is clean, red when dirty.

Additionally, it's magenta when there are untracked files, and yellow when git is out of sync.
And uses the default themes' symbols to mark the git status.
The right prompt is normal color when .git is absent.

* Title from .title file in the working directory.

Title defaults to basename when .title is absent.
The version number is appended to the title if data/VERSION is found.
Also appends the ruby version if .ruby-version file is found in the working directory.

## Screenshot

<p align="center">
<img src="local_theme.png">
</p>

# License

[MIT][mit] © [CarlosJHR64][author] et [al][contributors]


[mit]:            http://opensource.org/licenses/MIT
[author]:         http://github.com/carlosjhr64
[contributors]:   https://github.com/carlosjhr64/local/graphs/contributors
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
