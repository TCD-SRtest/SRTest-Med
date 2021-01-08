clear all; close all;

% ------- Input data ----------
M  = readmatrix('implant_data.xlsx','Range','A:C');
y = M(:,1);
z = M(:,2);
x = M(:,3);
tri = delaunay(x,y);

plot3(x,y,z,'.');
hold on


%% Plot it with TRISURF

h = trisurf(tri, x, y, z);
axis vis3d

%% Clean it up

axis off
l = light('Position',[-50 -15 29])
%set(gca,'CameraPosition',[208 -50 7687])
lighting phong
shading interp
colorbar EastOutside
