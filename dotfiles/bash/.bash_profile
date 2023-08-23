# .bash_profile

# Get the aliases and functions
[ -f $HOME/.config/bash/.bashrc ] && . $HOME/.config/bash/.bashrc

#####---------- EXPORTS ----------###
export BROWSER="firefox"
export EDITOR="nvim"
export VISUAL="nvim"
export LESSHISTFILE=-
export HISTFILE="$HOME/.config/bash/.bash_history"
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export CDPATH="$HOME:$HOME/.config/:$HOME/.local/:$HOME/.local/share/"
export CSCOPE_EDITOR="nvim"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export JAVA_HOME="/usr/lib/jvm/java-11-openjdk"

export NPM_PACKAGES="${HOME}/.local/bin/npm-packages"

#Android Studio
export ANDROID_STUDIO="${HOME}/.local/bin/android-studio/bin/studio.sh"
export ANDROID_HOME="${HOME}/Android/Sdk"

#Cargo PATH
export CARGO="${HOME}/.cargo/bin/cargo"
export RUSTUP_HOME="${HOME}/.rustup"
export RUSTC="${HOME}/.cargo/bin/rustc"

#Flutter PATH
export FLUTTER_ROOT="${HOME}/Android/flutter"
export DART_SDK="${HOME}/Android/flutter/bin/cache/dart-sdk"
export DART_LANGUAGE_SERVER="${HOME}/.pub-cache"

#Chrome PATH
export CHROME_EXECUTABLE="/opt/google/chrome/google-chrome"

export MANPAGER="less -R --use-color -Dd+r -Du+b"