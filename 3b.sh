echo -n "Enter the password:"
stty -echo
read p1
stty echo
echo -n "Confirm the password:"
stty -echo
read p2
stty echo
while [ "$p1" != "$p2" ]
do
echo -n "Password doesnot match re enter the password:"
stty -echo
read p2
stty echo
done
clear
echo "*******Terminal Locked***********"
echo -n "Enter the password to unlock:"
stty -echo
read p3
stty echo
while [ "$p1" != "$p3" ]
do
echo -n "Password doesnot match re enter the password:"
stty -echo
read p3
stty echo
done
echo "*********Terminal Unlocked**********"
