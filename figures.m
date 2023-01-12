%% Plot DNS (semtex data) 

clear all; clc; close all

% Reynolds number
Re = 1e4; 

% DNS time
t = 15;

% load semtex data
Semfile = ['data/DNS_Re=',num2str(Re),'_t=',num2str(t),'.mat'];
load(Semfile); XS = X; YS = Y; US = U; VS = V; WS = W; PS = P;

% display info
set(0,'units','pixels'); disp = get(0,'ScreenSize');
Lx = disp(3); Ly = disp(4); 

%% Plot Velocity Fields
f = figure(1); fn = pcolor(YS,XS,sqrt(WS.^2+US.^2)); fn.FaceColor = 'interp'; set(fn,'EdgeColor','none');  
TT = ['Velocity Field: $R_e =$ ',num2str(Re),' ($t=',num2str(t),'$)']; title(TT,'interpreter','latex');
xlim([1-5/Re^(1/2) 1+30/Re^(1/2)]); ylim([0 ceil(Re^0.25)/Re^(1/2)]);   
fc = colorbar('location','southoutside'); colormap('jet'); caxis([0,0.35])
set(get(fc,'label'),'string','$\sqrt{W^2+U^2}$','interpreter','latex'); 
xticks((0:5:30)/sqrt(Re)+1); xticklabels(arrayfun(@num2str, (xticks-1)*sqrt(Re), 'UniformOutput', 0)); 
yticklabels(arrayfun(@num2str,-round((acos(yticks)-pi/2)*sqrt(Re)), 'UniformOutput', 0));
xlabel('$\eta$','interpreter','latex'); ylabel('-$\beta$','interpreter','latex','rotation',0);
set(gcf, 'Position',  [0.1*Lx, 0.2*Ly, 0.8*Lx, 0.6*Ly]); 


% plot radial velocity
WSP = WS; WSP(WSP<0)= NaN;
figure(2); fn = pcolor(YS,XS,WSP); fn.FaceColor = 'interp'; set(fn,'EdgeColor','none');  
TT = ['$W$ velocity: $R_e =$ ',num2str(Re),' ($t=',num2str(t),'$)']; title(TT,'interpreter','latex');
xlim([1-5/Re^(1/2) 1+30/Re^(1/2)]); ylim([0 ceil(Re^0.25)/Re^(1/2)]);  
fc = colorbar('location','southoutside'); colormap('jet'); caxis([0,0.35])
xticks((0:5:30)/sqrt(Re)+1); xticklabels(arrayfun(@num2str, (xticks-1)*sqrt(Re), 'UniformOutput', 0));
yticklabels(arrayfun(@num2str, -round((acos(yticks)-pi/2)*sqrt(Re)), 'UniformOutput', 0));
xlabel('$\eta$','interpreter','latex'); ylabel('-$\beta$','interpreter','latex','rotation',0);
set(gcf, 'Position',  [0.1*Lx, 0.2*Ly, 0.8*Lx, 0.6*Ly]); 

% plot latitudanal velocity
figure(3); fn = pcolor(YS,XS,-US); fn.FaceColor = 'interp'; set(fn,'EdgeColor','none');  
TT = ['$U$ velocity: $R_e =$ ',num2str(Re),' ($t=',num2str(t),'$)']; title(TT,'interpreter','latex');
xlim([1-5/Re^(1/2) 1+30/Re^(1/2)]); ylim([0 ceil(Re^0.25)/Re^(1/2)]);   
fc = colorbar('location','southoutside'); colormap('jet'); caxis([0,0.16])
xticks((0:5:30)/sqrt(Re)+1); xticklabels(arrayfun(@num2str, (xticks-1)*sqrt(Re), 'UniformOutput', 0));
yticklabels(arrayfun(@num2str, -round((acos(yticks)-pi/2)*sqrt(Re)), 'UniformOutput', 0));
xlabel('$\eta$','interpreter','latex'); ylabel('-$\beta$','interpreter','latex','rotation',0);
set(gcf, 'Position',  [0.1*Lx, 0.2*Ly, 0.8*Lx, 0.6*Ly]); 

% plot azimuthal velocity
figure(4); fn = pcolor(YS,XS,VS); fn.FaceColor = 'interp'; set(fn,'EdgeColor','none');  
TT = ['$V$ velocity: $R_e =$ ',num2str(Re),' ($t=',num2str(t),'$)']; title(TT,'interpreter','latex');
xlim([1-5/Re^(1/2) 1+30/Re^(1/2)]); ylim([0 ceil(Re^0.25)/Re^(1/2)]);  
fc = colorbar('location','southoutside'); colormap('jet'); caxis([0,1])
xticks((0:5:30)/sqrt(Re)+1); xticklabels(arrayfun(@num2str, (xticks-1)*sqrt(Re), 'UniformOutput', 0));
yticklabels(arrayfun(@num2str, -round((acos(yticks)-pi/2)*sqrt(Re)), 'UniformOutput', 0));
xlabel('$\eta$','interpreter','latex'); ylabel('-$\beta$','interpreter','latex','rotation',0);
set(gcf, 'Position',  [0.1*Lx, 0.2*Ly, 0.8*Lx, 0.6*Ly]); 

% plot pressure
figure(5); fn = pcolor(YS,XS,PS); fn.FaceColor = 'interp'; set(fn,'EdgeColor','none');  
TT = ['Pressure: $R_e =$ ',num2str(Re),' ($t=',num2str(t),'$)']; title(TT,'interpreter','latex');
xlim([1-5/Re^(1/2) 1+30/Re^(1/2)]); ylim([0 ceil(Re^0.25)/Re^(1/2)]);  
fc = colorbar('location','southoutside'); colormap('jet'); caxis([-0.015,0.01]) 
xticks((0:5:30)/sqrt(Re)+1); xticklabels(arrayfun(@num2str, (xticks-1)*sqrt(Re), 'UniformOutput', 0));
yticklabels(arrayfun(@num2str, -round((acos(yticks)-pi/2)*sqrt(Re)), 'UniformOutput', 0));
xlabel('$\eta$','interpreter','latex'); ylabel('-$\beta$','interpreter','latex','rotation',0);
set(gcf, 'Position',  [0.1*Lx, 0.2*Ly, 0.8*Lx, 0.6*Ly]); 
