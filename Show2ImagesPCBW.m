function Show2ImagesPCBW(A,B,T1,T2)
%show two IMAGES: left in pseudocolours, and the right one - in BW
% 
sn=256; 
%nf='%9.2f';
la=double(min(A(:))); ha=double(max(A(:)));
lb=double(min(B(:))); hb=double(max(B(:)));
fs='\fontsize{16}\bf\color{red}';
%fs='\fontsize{32}\bf\color{black}';
%---- In pseudocolours ---------------------------------------------
IS=grayslice(mat2gray(double(A),[la,ha]),sn);
subplot(1,2,1),subimage(IS,jet(sn)),...
title([fs,T1])
    colormap(jet(sn))
    set(gcf,'Color','w')
    set(gca,'TickDir','out'), 
    set(gca,'XColor','k','YColor','k','fontsize',12,'fontweight','b')
%
%---- BW ------------------------------------------------------------
IS=grayslice(mat2gray(double(B),[lb,hb]),sn);
subplot(1,2,2),subimage(IS,gray(sn)),...
    colormap(gray(sn))
    title([fs,T2]) 
    set(gcf,'Color','w')
    set(gca,'TickDir','out'), 
    set(gca,'XColor','k','YColor','k','fontsize',12,'fontweight','b')
end

