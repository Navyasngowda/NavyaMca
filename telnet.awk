begin{
count=0
sent1=0;
sent2=0;
received=0;
}
{
if($1=="d")
{
count++;
}
else if($1=="+" && $3==1 && $4==2)
{
sent++;
}
else if($1=="+" && $3==0 && $4==2)
{
sent2++;
}
else if($1=="r"&& $3==2 && $4==3)
{
recievrd++;
}
}
END{
printf"\n Number of packets dropped:%d\n",count;
printf"\n Packet sent from source node1 is:%d\n",sent1;
printf"\n Packet sent from source node2 is:%d\n",sent2;
printf"\n Packet recieved:%d",received;sent=sent1+sent2;
printf"\n Packet Delivert Ratio:%2f\n",(recieved/sent)*100;
}
