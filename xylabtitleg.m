% function xylabtitleg(ax,varargin)
%
% Fills xlabel, ylabel, title and legend plot properties with one command
%
%  Input : 0. ax (optionnal), the axis handle
%          1. xlabel string 
%          2. ylabel string
%          3. title string
%          4. legent string (or cell vector of strings)



function xylabtitleg(ax,varargin)
if(~ishandle(ax))
    varargin=cat(2,{ax},varargin);
    ax=gca;
end

for ii=1:length(ax)
xlabel(ax(ii),varargin{1});
ylabel(ax(ii),varargin{2});
if(length(varargin)>2)
    title(ax(ii),varargin{3});
end
if(length(varargin)>3)
    if(iscell(varargin{4}))
        legend(ax(ii),varargin{4}{:});
    else
        legend(ax(ii),varargin{4});
    end
end
end