function [Hmean] = getmeanH_new(varargin);

    temp = varargin{1};

    if length(varargin) <2;
        Hmean = mean(temp);
    elseif length(varargin) == 2;
        [sorted indices] = sort(temp,'descend');
        wantedind = indices(1:varargin{2},:,:);
        for i = 1:size(temp,2);
            for j = 1:size(temp,3);
                Hmean(j,i) = mean(temp(wantedind(:,i,j),i,j));
            end
        end
    end
   
end