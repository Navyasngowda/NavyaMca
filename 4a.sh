for i in $*
do
if [ -f $e ]
then
echo "i contents are:";
cat $i | tr "[a-z]" "[A-Z]"
echo "-------"
else
echo "$i file does not exit"
fi
done
