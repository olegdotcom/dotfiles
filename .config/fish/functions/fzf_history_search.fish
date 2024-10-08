function fzf_history_search
    commandline -r (history | fzf)
end
