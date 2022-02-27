u=`whoami`
set -- ` who`
for i in $*
do
if [ $u = $1 ]
then
echo "$1 $4"
exit
else
shift 5
fi
done

