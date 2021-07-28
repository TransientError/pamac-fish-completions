# Always provide completions for command line utilities.
#
# Check Fish documentation about completions:
# http://fishshell.com/docs/current/commands.html#complete
#
# If your package doesn't provide any command line utility,
# feel free to remove completions directory from the project.

set -l commands "search list info install reinstall remove checkupdates update upgrade clone build clean"
set -l long_options version help
complete -c pamac -f
for long_opt in $long_options;
    complete -c pamac -l $long_opt;
end
complete -c pamac -n "not __fish_seen_subcommand_from $commands" -a $commands
