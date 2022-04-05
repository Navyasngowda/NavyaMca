d=`date +%d`
d=`expr $d + 0`
l=`cal | tr -d "[\137][\010]" | grep -wn "$d" | head -c1`
if [ $d  -lt 9 ]
then
	cal | tr -d "[\137][\010]" | sed " $l s/$d/*/"
else
	cal | tr -d "[\137][\010]" | sed " $l s/$d/**/"
fi
