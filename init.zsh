_aka_yargs_completions()
{
  local reply
  local si=$IFS
  IFS=$'
' reply=($(COMP_CWORD="$((CURRENT-1))" COMP_LINE="$BUFFER" COMP_POINT="$CURSOR" /opt/homebrew/bin/ak --get-yargs-completions "${words[@]}"))
  IFS=$si
  _describe 'values' reply
}
compdef _aka_yargs_completions ak

