### This file defines course setup stuff for IC211.  It's primary
### purpose is to define the "211sync" command that is supposed to
### keep the ~/ic211 directory sync'd (via github) between your
### VM and your CS Dept. lab account.

# this is meant to be sourced into your .bashrc
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  echo "ERROR: This script is not meant to be run on its own,"
  echo "but sourced into your bashrc with a line like"
  echo "  source $0"
  exit 1
fi

function 211sync {
  (
    cd $HOME/ic211
    git add .
    if git diff-index --quiet --cached HEAD -- || git diff-files --quiet; then
      echo "Committing current changes"
      msg="working on $(basename "$(pwd)")"
      echo git commit -a -m "msg"
      git commit -a -m "msg"
      echo
    fi
    echo
    echo "Getting updates from your repo"
    echo git pull 
    git pull
    echo
    echo "Copying your work to your repo"
    echo git push
    git push
  )
}

function gitsync {
  {
    echo Syncing 210
    210sync
    echo
    echo Syncing 211
    211sync
  }
}
