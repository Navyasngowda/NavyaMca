echo "Enter a passward"
read p1
echo "Enter the confirmed passward"
stty -echo
read p2
stty echo
while [ "$p1" != "$p2"
do
echo "Passward does not match.Enter the currect passward"
stty -echo
rerad p2
stty echo
done
clear
echo "------terminal locked------------"
echo "Enter the passward to unlock"
stty -echo
read p3
stty echo
while [ "$p1" != "$p3" ]
do
clear
echo "-------terminal locked---------------"
echo "Passward does not match.Re-enter the passward"
read p3
done
echo "---------terminal unlocked-------------"


