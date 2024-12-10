if status is-interactive
    # Commands to run in interactive sessions can go here
end

# use vi-keybindings
set -g fish_key_bindings fish_vi_key_bindings

# activate miniconda if exists
set CONDA_FISH_INIT_FILE "$HOME/miniconda3/etc/fish/conf.d/conda.fish"

if test -e $CONDA_FISH_INIT_FILE
    source $CONDA_FISH_INIT_FILE
end
