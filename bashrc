SCRIPT_DIR=$HOME/linux

if [ -d $SCRIPT_DIR ]; then
  for i in $SCRIPT_DIR/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi
