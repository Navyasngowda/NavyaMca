#include<stdio.h>
void main()
{
int incoming,outgoing,buffsize,n,i,store=0;
printf("enter n value:");
scanf("%d",&n);
printf("enter buffersize:");
scanf("%d",&buffsize);
printf("outgoing value:");
scanf("%d",&outgoing);

while(n!=0)
{
printf("incoming packets:");
scanf("%d",&incoming);
printf("incoming:");
if(incoming<=(buffsize-store))
store=incoming;
else
{
printf("%d packet is dropped\n",incoming-(buffsize-store));
store=buffsize;
printf("buffer size %d out of %d\n",store,buffsize);
}
store=store-outgoing;
if(store<0)
store=0;
printf("after outgoing %d packets left in buffer %d\n",store,buffsize);
n--;
}
}

