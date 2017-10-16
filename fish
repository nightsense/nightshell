# customized fish shell theme for nightshell


# NORMAL text for normalish things
set fish_color_comment           normal
set fish_color_escape            normal
set fish_color_host              normal
set fish_color_normal            normal
set fish_color_redirection       normal
set fish_color_user              normal
set fish_pager_color_completion  normal
set fish_pager_color_description normal

# UNDERLINED text for current history entries and valid paths
set fish_color_valid_path        --underline

# RED for things that say "stop here" or "look out"
set fish_color_cwd_root          red
set fish_color_end               red
set fish_color_error             red
set fish_color_match             red

# YELLOW HIGHLIGHTING for matches/selections
set fish_color_search_match      --background=yellow
set fish_color_selection         --background=yellow

# GREEN text for commands (things that say "go ahead and...")
set fish_color_command           green

# TEAL ("[o]cean-green") text for [o]perators and [o]ptions
set fish_color_operator          cyan
set fish_color_param             cyan

# BLUE for "current waters" (cwd, history) and quotes (rivers between "" banks)
set fish_color_cwd               blue
set fish_color_history_current   blue
set fish_color_quote             blue

# PURPLE for [p]otential autosuggestions, completion [p]refixes, and [p]rogress
set fish_color_autosuggestion    magenta
set fish_pager_color_prefix      magenta
set fish_pager_color_progress    magenta
