function Show2Images(A,B,T1,T2)
%show pair of IMAGES in pseudocolours
% 
sn=256; 
la=double(min(A(:))); ha=double(max(A(:)));
lb=double(min(B(:))); hb=double(max(B(:)));
fs='\fontsize{20}\bf\color{red}';
IS=grayslice(mat2gray(double(A),[la,ha]),sn);
subplot(1,2,1),subimage(IS,jet(sn)),...
    title([fs,T1])
    colormap(jet(sn))
    set(gcf,'Color','w')
    set(gca,'TickDir','out'), 
    set(gca,'TickDir','out'), 
    set(gca,'XColor','k','YColor','k','fontsize',11,'fontweight','b')
%
IS=grayslice(mat2gray(double(B),[lb,hb]),sn);
subplot(1,2,2),subimage(IS,jet(sn)),...
    title([fs,T2]), 
    set(gca,'TickDir','out'),
    set(gca,'XColor','k','YColor','k','fontsize',11,'fontweight','b') %
    %colorbar
end

