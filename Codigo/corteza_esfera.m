%Demo distmesh esfera
clear
[p,t] = distmeshnd(@dsphere,@huniform,0.15,[-1 -1 -1; 1 1 1],[],0,0,0,1);
cameratoolbar;
[T,P] = freeBoundary(TriRep(t,p));
figure;
trisurf(T,P(:,1),P(:,2),P(:,3));
axis equal;
cameratoolbar;
figure;
hold on;
axis equal;
cameratoolbar;
N = size(T,1);
for a = 1:N
    A = [P(T(a,1),:);P(T(a,2),:);P(T(a,3),:)];
    C = sum(A,1)/3.0;
    if C(1) < 0
        trisurf(T(a,:),P(:,1),P(:,2),P(:,3));
    end
end
hold off