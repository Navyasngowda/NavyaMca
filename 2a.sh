echo -n "Enter first file name:"
read file1
if [ -e $file1 ]
then
set -- `ls -ld $file1`
file1perm=$1
else
echo "File does not exit"
exit
fi
echo "Enter second file:"
read file2
if [ -e $file2 ]
then
set-- `ls-ld $file2`
file2perm=$2
else
echo "File does not exit"
exit
fi
if [ $file1perm = $file2perm ]
then
echo "File permission are identical"
echo "$file1 permission is $file1perm"
echo "$file2 permisssion is $file2perm"
else
echo "File permission are not identical"
fi

