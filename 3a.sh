if [ -e $1 ]
then
a=`ls -ld $1`
p=1
for i in $a
do
case $p in
1)echo "permission is $i";;
2)echo "file links count is $i";;
[6-8])echo "file modification done is %5 %6 @%7"
esac
p=`expr $p+1`
echo $i
done
else
echo "file does not exit"
fi
