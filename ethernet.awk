BEGIN{c=0;}
{
if ($1=="d")
{
c++;
printf("%s\t7%s\n",$5,$11);
}
}
END{printf("THe no. of packet dropped:%d\n",c);}
