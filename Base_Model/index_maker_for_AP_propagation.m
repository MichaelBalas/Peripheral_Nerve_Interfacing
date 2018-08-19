%This function takes a matrix of co-ordinate points and outputs the index 
%it is at a specific tet.file (rat6tet file for my case)
%
%   INPUT
%   point   - a matrix of xyz co-ordinates
%
%   OUTPUT
%   indices - a vector of index numbers that correspond to the element
%             number of the tet.file (note that the file will be based on a
%             tet.file that is compatible with matlab i.e. index starts at
%             1 and not 0



function indices = index_maker_for_AP_propagation(ptsfile,tetfile,point);
P = point;

[a b] = size (P);
counter = 1;
indices = zeros(a,1);

while counter < a+1;
    indices(counter) = determine_inside_tetrahedron(ptsfile,tetfile,P(counter,:));
    counter = counter+1;
end