#/usr/bin/env bash


echo ""
echo "Installing local scripts:"
for userScriptSource in `ls *.util.sh`
do
    echo "Installing: $userScriptSource"
    userScriptTarget=`echo $userScriptSource | awk -F. '{print $1}'`
    cp $userScriptSource $HOME/bin/$userScriptTarget
done
echo ""
echo "For security purposes install the following global and root only scripts manually:"
for globalScriptSource in `ls *.global.util.sh`
do
    echo "$globalScriptSource"
done
for rootScriptSource in `ls *.root.util.sh`
do
    echo "$rootScriptSource"
done
