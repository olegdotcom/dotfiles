if status is-interactive
    # Commands to run in interactive sessions
    fish_add_path /opt/homebrew/bin
    neofetch

    # Function to sync history after each command
    function sync_history --on-event fish_preexec
        history --merge
    end

    # Function to sync history before each prompt
    function save_history --on-event fish_prompt
        history --save
    end

    # FZF config
    fzf --fish | source
    set -gx FZF_DEFAULT_OPTS '--no-height --no-reverse --border'
end
