%dibujaplys
[vertex,facet] = read_ply('bun_zipper.ply');
trisurf(facet,vertex(:,1),vertex(:,3),vertex(:,2));
cameratoolbar;
axis equal;
shading interp
colormap bone