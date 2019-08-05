#/usr/bin/env bash

for scriptBase in `ls *.util.sh`
do
    echo "INSTALLING $scriptBase"
    scriptTarget=`echo $scriptBase | awk -F. '{print $1}'`
    cp $scriptBase $HOME/bin/$scriptTarget
done
