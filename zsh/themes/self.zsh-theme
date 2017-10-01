if [ $UID -eq 0 ]; then CARETCOLOR="red"; else CARETCOLOR="blue"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
#PROMPT='${ret_status} [%h] %n@%m %{${fg_bold[blue]}%}::%{$fg_bold[green]%}%p %{$fg[cyan]%}%3~ $(git_prompt_info)%{${fg_bold[$CARETCOLOR]}%}»%{${reset_color}%} ' 
PROMPT='${ret_status}%{${reset_color}%} \
%{$fg[blue]%}[%h]%{${reset_color}%} \
%{$fg[cyan]%}%n@%m%{${reset_color}%} \
%{$fg_bold[magenta]%}%p%{${reset_color}%}\
%{$fg_bold[magenta]%}%3~ %{${reset_color}%}\
$(git_prompt_info)%{${reset_color}%}\
%{${fg_bold[$CARETCOLOR]}%}»%{${reset_color}%} ' 

RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
# ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"


# PROMPT='%m %{${fg_bold[blue]}%}:: %{$reset_color%}%{${fg[green]}%}%3~ $(git_prompt_info)%{${fg_bold[$CARETCOLOR]}%}»%{${reset_color}%} '
