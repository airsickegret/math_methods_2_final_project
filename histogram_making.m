brendan = load('brendan_style_correlation_matrix.mat')
flakey_null = load('Flakey_null_straw1_correlation_matrix.mat')
STDD1 = load('Flakey_STDD1_correlation_matrix.mat')
STDP1 = load('Flakey_STDP1_correlation_matrix.mat')
reliable_null = load('Reliable_null_straw2_correlation_matrix.mat')
STDD2 = load('Reliable_STDD2_correlation_matrix.mat')
STDP2 = load('Reliable_STDP2_correlation_matrix.mat')

figure(1);hold on;
histogram(brendan.lagcorr(brendan.lagcorr > 0),20)
histogram(flakey_null.lagcorr(flakey_null.lagcorr>0),20)
histogram(STDD1.lagcorr(STDD1.lagcorr > 0),20)
histogram(STDP1.lagcorr(STDP1.lagcorr > 0),20)
histogram(reliable_null.lagcorr(reliable_null.lagcorr > 0),20)
histogram(STDD2.lagcorr(STDD2.lagcorr > 0),20)
histogram(STDP2.lagcorr(STDP2.lagcorr > 0),20)
box off
set(gcf,'Color','white')
title('lag correlation distribution across networks')
legend('brendan','flakey null','STDD1','STDP1','reliable null','STDD2','STDP2');
xlabel('strength of correlation')
ylabel('Count')