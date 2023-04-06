# Gets current command line
function current_command
    commandline -cp | sed -E 's/watchcwd *//'
end
complete -c watchcwd -f -sh -lhelp
complete -c watchcwd -a '(complete -C "$(current_command)")'
