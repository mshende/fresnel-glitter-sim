
%% simulation of glitter as fresnel lens
figure(123)
ax = subplot(1,1,1);
xlabel('x');
ylabel('y');
title('Fresnel Ellipsoids');
axis([0 40 0 40])
hold on;

line_x = [5, 5];
line_y = [0, 20];

%set up centroids along a line (2D simulation)
plot(ax, line_x, line_y);
centroids_x = ones(1,20).*5;
centroids_y = [1:20];
numCentroids = size(centroids_x,2);
scatter(ax, centroids_x, centroids_y, 10, 'filled')

surface_norms = zeros(numCentroids,2);
surface_norms(:,1) = 1;

% plot the surface normals
for i=1:numCentroids
   quiver(ax,centroids_x(i), centroids_y(i), ...
          surface_norms(i,1), surface_norms(i,2));
end