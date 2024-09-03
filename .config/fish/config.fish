if status is-interactive
    # Commands to run in interactive sessions can go here

    fish_add_path /opt/homebrew/bin

    # Function to sync history after each command
    function sync_history --on-event fish_preexec
        history --merge
    end

    # Function to sync history before each prompt
    function save_history --on-event fish_prompt
        history --save
    end

end
