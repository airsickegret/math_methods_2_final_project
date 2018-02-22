

all_clust = [C_cycle(~isnan(C_cycle)),C_fanIn(~isnan(C_fanIn)),C_fanOut(~isnan(C_fanOut)),C_middleMan(~isnan(C_middleMan))];

for iClust = 1:size(all_clust,2)
    stderror(iClust) = std(all_clust(:,iClust)) / sqrt(length(all_clust(:,iClust)));
end

mean_all_clust = [mean(all_clust(:,1)),mean(all_clust(:,2)),mean(all_clust(:,3)),mean(all_clust(:,4))];

figure(1);hold on;
bar(mean_all_clust)
errorbar(mean_all_clust,stderror,'o')
hold off;