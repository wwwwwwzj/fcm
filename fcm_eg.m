clear,clc,close all;
data1 = randn(200,1)+3;
data2 = randn(200,1)+7;
data(1:100,1:2) = [data1(1:100),data2(1:100)];
data(101:200,1:2) = [data2(101:200),data1(101:200)];

[center,U,obj_fcn] = fcm(data,2);
maxU = max(U);
index1 = find(U(1,:) == maxU);
index2 = find(U(2, :) == maxU);
line(data(index1,1), data(index1,2), 'lineStyle', 'none','marker', 'o','color', 'g');
line(data(index2,1), data(index2,2), 'LineStyle', 'none','Marker', 'o','Color', 'r');
line(center(:,1),center(:,2),'lineStyle', 'none','markersize',21,'marker', '.','color', 'k');