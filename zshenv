# NB1 .zshrc functions/aliases, etc. will not work in a non-interactive context, thus
# put functions here if needed in non-interactive context!
# NB2 .zshenv will be executed before .zshrc

# check if a command exists, silently! (exists git && echo "git found" || echo "git not found")
# command -v behaves like which, but more resilient (https://stackoverflow.com/q/592620/2258480)
# $1 is the first parameter passed to the function exists git <- git = $1
# redirect to /dev/null (black hole, non existent) to avoid printing to stdout
# redirect standard error to first standard output (1 needs to be prepended by &, if redirectiong
# is on the right side)
function exists() {
  command -v $1 >/dev/null 2>&1
}