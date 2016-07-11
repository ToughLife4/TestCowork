params_slic = [31 , 26.10 , 41.63 , 42.81 , 6.15 , 108.21 , 0.20 ;
31 , 29.60 , 9.14 , 39.60 , 28.54 , 181.36 , 0.06 ;
32 , 27.76 , 9.28 , 7.07 , 18.88 , 130.79 , 0.01 ;
32 , 29.03 , 32.76 , 8.38 , 8.84 , 118.72 , 0.03 ;
32 , 29.03 , 49.18 , 26.39 , 10.63 , 161.83 , 0.02 ;
31 , 28.39 , 32.80 , 17.28 , 49.63 , 163.97 , 0.01 ;
32 , 29.04 , 22.28 , 27.26 , 10.02 , 122.37 , 0.02 ;
31 , 28.41 , 14.66 , 19.18 , 22.59 , 115.02 , 0.08 ;
32 , 29.02 , 14.65 , 25.74 , 7.83 , 171.72 , 0.02 ;
32 , 29.03 , 33.77 , 26.78 , 18.98 , 129.56 , 0.02 ;
31 , 26.06 , 10.25 , 31.19 , 4.76 , 144.00 , 0.26 ;
32 , 25.00 , 28.00 , 29.20 , 22.85 , 145.15 , 0.93 ;
32 , 29.11 , 34.17 , 13.64 , 8.27 , 151.63 , 0.37 ;
32 , 24.87 , 6.55 , 44.39 , 29.50 , 141.58 , 0.85 ;
32 , 24.97 , 49.41 , 48.88 , 37.09 , 144.51 , 0.92;
30 , 30.00 , 33.07 , 16.90 , 38.04 , 174.98 , 0.02];
params_slic_range=[...
20, 100;
10,  40;
1,  50;
1,  50;
1,  50;
100, 200;
0  , 1
];
params_slic_reg = zeros(size(params_slic));
for i = 1:7
    params_slic_reg(:,i) = params_slic(:,i)-params_slic_range(i,1);
    params_slic_reg(:,i) = params_slic_reg(:,i)/(params_slic_range(i,2)-params_slic_range(i,1));
end
params_egs=...
[...
1.75 , 293 , 1330 , 23.08 , 24.04 ,  3.38 , 109.24 , 0.45 ;
1.87 , 273 , 1380 , 42.74 , 36.95 , 16.26 , 129.89 , 0.28 ;
1.87 , 258 , 1270 , 14.51 , 13.85 , 14.29 , 191.07 , 0.34 ;
1.94 , 232 , 1315 , 11.28 , 25.12 , 32.19 , 108.84 , 0.28 ;
1.99 , 216 , 1304 , 37.98 , 29.81 , 24.17 , 111.74 , 0.18 ;
2.00 , 299 , 1384 , 40.72 , 30.45 ,  2.11 , 126.21 , 0.36 ;
1.75 , 281 , 1279 , 24.20 , 26.67 , 44.88 , 155.09 , 0.05 ;
2.10 , 182 , 1373 , 22.35 ,  6.53 , 18.35 , 152.52 , 0.24 ;
1.78 , 283 , 1324 , 26.36 ,  9.00 , 34.60 , 108.97 , 0.36 ;
1.73 , 222 , 1399 , 43.42 , 20.09 , 26.65 , 183.74 , 0.21 ;
1.75 , 297 , 1353 , 21.72 , 34.85 , 32.46 , 131.23 , 0.41 ;
1.65 , 259 , 1365 , 35.79 , 42.78 ,  2.50 , 183.48 , 0.24 ;
1.87 , 278 , 1388 , 23.79 , 14.74 , 44.14 , 157.17 , 0.69 ;
1.85 , 241 , 1365 ,  8.22 , 18.45 , 33.95 , 166.87 , 0.70 ;
1.80 , 244 , 1393 , 10.17 , 10.15 ,  4.95 , 141.76 , 0.78 ;
1.69 , 284 , 1322 , 14.22 , 33.66 , 28.74 , 139.36 , 0.59 ;...
];
params_egs_range=[...
1.5, 3;
100,  300;
500,  2000;
1,  50
1,  50;
1,  50;
100, 200;
0  , 1
];

figure;hold on
pbaspect([2.4 1 1])
plot(params_slic_reg(:,1), '-o', 'LineWidth',2, 'Color',[43,  127, 128]/255);
plot(params_slic_reg(:,2), '-^','LineWidth',2, 'Color',[237, 30, 35]/255);
plot(params_slic_reg(:,3), '-->','LineWidth',1, 'Color',[239, 204, 126]/255);
plot(params_slic_reg(:,4), '--x','LineWidth',1, 'Color',[50, 240, 50]/255);
plot(params_slic_reg(:,5), '--s','LineWidth',1, 'Color',[59, 75, 167]/255);
plot(params_slic_reg(:,6), '--<','LineWidth',1, 'Color',[243, 107, 54]/255);
plot(params_slic_reg(:,7), '--^','LineWidth',1, 'Color',[128, 0, 0]/255);
l = legend('$n_s$','$c$','$\omega_d$', '$\omega_f$', '$\omega_e$', '$\beta$', '$\lambda$');
set(l,'Interpreter','Latex');
ax = gca;
ax.XTick = 1:16;
ax.XTickLabel = {' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '};
export_fig('params_slic.pdf', '-transparent');

params_egs_reg = zeros(size(params_egs));
for i = 1:8
    params_egs_reg(:,i) = params_egs(:,i)-params_egs_range(i,1);
    params_egs_reg(:,i) = params_egs_reg(:,i)/(params_egs_range(i,2)-params_egs_range(i,1));
end

figure;hold on
pbaspect([2.4 1 1])
plot(params_egs_reg(:,1), '-o', 'LineWidth',2, 'Color',[43,  127, 128]/255);
plot(params_egs_reg(:,2), '--^','LineWidth',1, 'Color',[239, 204, 126]/255);
plot(params_egs_reg(:,3), '->','LineWidth',2, 'Color',[237, 30, 35]/255);
plot(params_egs_reg(:,4), '--x','LineWidth',1, 'Color',[50, 240, 50]/255);
plot(params_egs_reg(:,5), '--s','LineWidth',1, 'Color',[59, 75, 167]/255);
plot(params_egs_reg(:,6), '-->','LineWidth',1, 'Color',[243, 107, 54]/255);
plot(params_egs_reg(:,7), '--<','LineWidth',1, 'Color',[128, 0, 0]/255);
plot(params_egs_reg(:,8), '--^','LineWidth',1, 'Color',[0, 128, 0]/255);
l = legend('$\sigma$','$k$','$m_s$', '$\omega_d$', '$\omega_f$', '$\omega_e$', '$\beta$', '$\lambda$');
set(l,'Interpreter','Latex');
xticklabel_rotate([1:16],45,{'$k=1$','$k=5$','$k=10$','$k=15$','$k=20$','$n=1$','$n=2$','$n=3$','$n=4$','$n=5$','$\epsilon=100$','$\epsilon=200$','$\epsilon=300$','$\epsilon=400$','$\epsilon=500$','$\ell_1$'},'Interpreter','Latex')
export_fig('params_egs.pdf', '-transparent');
close all
!pdflatex params-stitch.tex -job-name params
!del *.aux
!del *.log
!move params.pdf ../params.pdf

%exec('!abc');