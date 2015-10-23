SCRIPT_DIR=$HOME/linux

# Lancement des scripts
if [ -d $SCRIPT_DIR ]; then
  for i in $SCRIPT_DIR/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi

hash thefuck &> /dev/null
if [ $? -eq 0 ]; then
  eval $(thefuck --alias)
fi

