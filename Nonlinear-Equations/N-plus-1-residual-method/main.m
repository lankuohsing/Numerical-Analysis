clear;
close all;
clc;
%%
X=[10 10 10];
err=calerr(X);
%%
count=0;
totalerr=1;
%
while totalerr>1e-8
   guess=[X(1),X(2),X(3);
       X(1)*1.01,X(2),X(3);
       X(1),X(2)*1.01,X(3);
       X(1),X(2),X(3)*1.01;
       ];
   guesserror=[calerr(guess(1,:));
       calerr(guess(2,:));
       calerr(guess(3,:));
       calerr(guess(4,:));
       ];
   guesserrorT=guesserror';
   A=[ones(1,4);
       guesserrorT;
       ];
   Y=A\[1;0;0;0;];
   new_x=guess'*Y;
   X=new_x;
   err=calerr(X)
   totalerr=norm(err,2);
   count=count+1;
    
end
count
X
totalerr
%}