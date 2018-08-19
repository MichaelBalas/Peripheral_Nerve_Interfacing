%Function for determining which element a point is in a tetrahedron file,
%this assumes that the file is already made in a tetrahedron and that all
%points are in the space of your mesh. If the point is not in the mesh it
%will return a -1.
%
%   INPUTS
%   ptsfile - is a matrix of the x,y,z co-ordinates of all the nodes in the
%           mesh
%   tetfile - is a matrix of all the elements in the mesh and this will be
%           assumed be compatible in matlab format and the indices will
%           start from 1 and not 0
%   point   - is a vector of the x,y,z co-ordinates that will be used to
%           determine which element contains the point
%
%   OUTPUTS
%   index   - is the number that refers to which element the point is in.
%
%

function index = determine_inside_tetrahedron(ptsfile,tetfile,point);

rat6pts = ptsfile;
rat6tet_matlab = tetfile;

clear a b;

elem_found = 0;
index = 1; %index of the element point will be found in once code is run
ni1 = 0;
ni2 = 0;
ni3 = 0;
ni4 = 0;

d0 = zeros(4);
d0(:,4) = 1;

d1 = zeros(4);
d1(:,4) = 1;

d2 = zeros(4);
d2(:,4) = 1;

d3 = zeros(4);
d3(:,4) = 1;

d4 = zeros(4);
d4(:,4) = 1;

    while elem_found == 0 && index < length(rat6tet_matlab)+1;
        ni1 = rat6tet_matlab(index,1);
        ni2 = rat6tet_matlab(index,2);
        ni3 = rat6tet_matlab(index,3);
        ni4 = rat6tet_matlab(index,4);
        n1 = rat6pts(ni1,:);
        n2 = rat6pts(ni2,:);
        n3 = rat6pts(ni3,:);
        n4 = rat6pts(ni4,:);
        %base determinant
        d0(1,1:3) = n1; d0(2,1:3) = n2; d0(3,1:3) = n3; d0(4,1:3) = n4;

        %determinant 1
        d1(1,1:3) = point; d1(2,1:3) = n2; d1(3,1:3) = n3; d1(4,1:3) = n4;

        %determinant 2
        d2(1,1:3) = n1; d2(2,1:3) = point; d2(3,1:3) = n3; d2(4,1:3) = n4;

        %determinant 3
        d3(1,1:3) = n1; d3(2,1:3) = n2; d3(3,1:3) = point; d3(4,1:3) = n4;

        %determinant 4
        d4(1,1:3) = n1; d4(2,1:3) = n2; d4(3,1:3) = n3; d4(4,1:3) = point;

        %determinant calculations and sign determination
        det0 = det(d0);
        det1 = det(d1);
        det2 = det(d2);
        det3 = det(d3);
        det4 = det(d4);
        sign0 = sign(det0);
        sign1 = sign(det1);
        sign2 = sign(det2);
        sign3 = sign(det3);
        sign4 = sign(det4);
        sum = abs(sign0+sign1+sign2+sign3+sign4);
            if sum == 5
                elem_found = 1;
            elseif sign1 == 0 || sign2 == 0 || sign3 == 0 || sign4 == 0;
                if sign0 == sign2 && sign0 == sign3 && sign0 == sign4;
                    elem_found = 1;
                elseif sign0 == sign1 && sign0 == sign3 && sign0 == sign4;
                    elem_found = 1;
                elseif sign0 == sign1 && sign0 == sign2 && sign0 == sign4;
                    elem_found = 1;    
                elseif sign0 == sign1 && sign0 == sign2 && sign0 == sign3;
                    elem_found = 1;              
                else
                    index = index+1;
                end
            else
                index = index+1;
            end
    end
    if index == length(rat6tet_matlab)+1;
        index = -1;
    end
end

    
    
    