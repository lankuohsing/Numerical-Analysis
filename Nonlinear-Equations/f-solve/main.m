clear all;
close all;
clc;

x0 = [1;1;1;1];
h=optimset;

h.Display='on';
[x,fval] = fsolve(@f,x0,h);