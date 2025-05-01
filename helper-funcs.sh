# Run the given command, but ask first.
# Only run the command if the user doesn't
# reply with "n" or "N".
function run()
{
  local cmd="$*"
  echo -n "> $cmd   [Yn]"
  read -n 1 reply; 
  if [ "$reply" != "" ]; then echo ' -SKIPPING-'; fi
  if [ "$reply" = "${reply#[Nn]}" ]; then
    eval "$*"
  fi
}
