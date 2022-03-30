echo "hello from zshenv"
# NB1 .zshrc functions/aliases, etc. will not work in a non-interactive context, thus
# put functions here if needed in non-interactive context!
# NB2 .zshenv will be executed before .zshrc

# check if a command exists, silently! (exists git && echo "git found" || echo "git not found")
function exists() {
  command -v $1 >/dev/null 2>&1
}