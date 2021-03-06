#!/bin/bash
# shellcheck disable=SC1090,SC2034,SC2154

## How many sources in the file

## Variables
SCRIPTDIRA=$(dirname $0)
source "$SCRIPTDIRA"/foldervars.sh

## Amount of sources greater than one?
HOWMANYLINES=$(echo -e "`wc -l $FILEBEINGPROCESSED | cut -d " " -f 1`")
if [[ "$HOWMANYLINES" -le 1 ]]
then
  printf "$yellow"    "$BASEFILENAME Has $HOWMANYLINES Sources."
  AMOUNTOFSOURCES=$HOWMANYLINES
  echo "AMOUNTOFSOURCES=$AMOUNTOFSOURCES" | tee --append $TEMPPARSEVARS &>/dev/null
elif [[ "$HOWMANYLINES" -gt 1 ]]
then
  printf "$yellow"    "$BASEFILENAME Has $HOWMANYLINES Sources."
  AMOUNTOFSOURCES=$HOWMANYLINES
  echo "AMOUNTOFSOURCES=$AMOUNTOFSOURCES" | tee --append $TEMPPARSEVARS &>/dev/null
fi
