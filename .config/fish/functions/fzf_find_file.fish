function fzf_find_file
    set file (fzf)
    if test -n "$file"
        commandline -r "$file"
    end
end
