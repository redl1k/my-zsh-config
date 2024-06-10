#Author : Heapbytes <Gourav> (https://github.com/heapbytes)

PROMPT='
┌─[%F{blue} %~%f] [%F{green} $(get_ip_address)%f] $(git_prompt_info)
└─➜ '

RPROMPT='[%F{red}%?%f]'

get_ip_address() {
  if [[ -n "$(ifconfig ens192 2>/dev/null)" ]]; then
    echo "%{$fg[green]%}$(ifconfig ens192 | awk '/inet / {print $2}')%{$reset_color%}"
  elif [[ -n "$(ifconfig ens224 2>/dev/null)" ]]; then
    echo "%{$fg[green]%}$(ifconfig ens224 | awk '/inet / {print $2}')%{$reset_color%}"
  else
    echo "%{$fg[red]%}No IP%{$reset_color%}"
  fi
}

