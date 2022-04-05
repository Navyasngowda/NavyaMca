for fn in $*
if [ -f! $fn ]
then
echo "$fn does not exit"
fi

do
     if [ $fn = $1 ]
     then 
        continue
        else
        echo "$fn does not exit"
        exit
     fi
     for w in `cat $1`
     do
     lc=`grep -oiw "$w" $fn | wc -l`
     echo "$w is $lc times in $fn"
     done
     
done 

