function watchcwd --description="Watch that acts on FS changes in CWD"
    argparse h/help -- $argv

    if set -ql _flag_h
        printf "%s\n" \
            "watchcwd – Watch that acts on filesystem changes in the current directory." \
            "" \
            "Usage:" \
            "  watchcwd -h | --help" \
            "  watchcwd <command> [<arg>...]" \
            "" \
            "Options:" \
            "  -h --help  Show this help."
        return 0
    end

    if not type -q fswatch
        echo "Fswatch not found. Watchcwd requires fswatch." >&2
        echo "Install fswatch: https://github.com/emcrisostomo/fswatch#installation." >&2
        return 1
    end

    if [ (count $argv) -eq 0 ]
        echo "No command provided. Watchcwd requires a command to run." >&2
        return 1
    end

    # Do not use xargs, because it does not work with things like Fish functions.
    # fswatch -or . | xargs -n1 -I{} $argv[1..]
    fswatch -or . | while read ignored_line
        eval $argv[1..]
    end
end
