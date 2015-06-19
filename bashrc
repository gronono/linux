SCRIPT_DIR=$HOME/linux

# Maj distant
DIR=`pwd`
cd $SCRIPT_DIR
git pull
cd $DIR

# Lancement des scripts
if [ -d $SCRIPT_DIR ]; then
  for i in $SCRIPT_DIR/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi
