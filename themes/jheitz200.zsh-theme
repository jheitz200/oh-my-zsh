eval light_pink='%F{169}'
eval light_green='%F{036}'
eval light_yellow='%F{222}'
eval light_blue='%F{039}'
eval light_purple='%F{140}'

PROMPT='
%n@%m %{$light_green%}%~ 
$(git_prompt_info)$light_blue ᐅ %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="$light_pink("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$light_pink%})"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="$light_blue"
