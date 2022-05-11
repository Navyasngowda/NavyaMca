#include<stdio.h>
#include<stdlib.h>
int d[10],p[10],cost[10][10],n,i,j;


void dijik(int src)
{
int s[10],v,u,min;
for(i=0;i<n;i++)
  {
   d[i]=cost[src][i];
   p[i]=src;
   s[i]=0;
  }
s[src]=1;

for(i=1;i<n;i++)
 {
   min=99;
   u=-1;
for(j=0;j<n;j++)
   {
 if(s[i]==0)
   if(d[j]<min)
   {
   min=d[j];
   u=j;
}


 if(u==-1)
   return;
  s[u]=1;
}

for(v=0;v<n;v++)
{
  if(s[v]==0)
   if(d[u]+cost[u][v]<d[v])
   {
   d[v]=d[u]+cost[u][v];
   p[v]=u;
   }
}
}}



void short_path(int src,int dst)
{
int i;
i=dst;
while(i!=src)
{
printf("%d<--",i);
i=p[i];

}
printf("%d=%d",i,d[dst]);
printf("\n");
}





void main()
{
int i,j,source;
printf("enter the number of vertex:");
scanf("%d",&n);
printf("enter the cost adjecency matrix:\n"); 
for(i=0;i<n;i++)
for(j=0;j<n;j++)
scanf("%d",&cost[i][j]);
printf("the cost adjecency is:\n");
for(i=0;i<n;i++)
{
for(j=0;j<n;j++)
printf("\t%d",cost[i][j]);
printf("\n"); 
}
printf("enter the source vertx:");
scanf("%d",&source);
dijik(source);

printf("The shortest path is:\n");

for(j=0;j<n;j++)
{

short_path(source,j);
printf("\n");
}}



