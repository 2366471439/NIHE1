clear;clc;
set(0,'defaultfigurecolor','w')
[all_themes, all_colors] = GetColors();
% 生成范围在5000~7000的数100个
a = randi([5000 7000], 1, 100);
% 生成范围在4000~6000的数100个
b = randi([4000 6000], 1, 100);
% 生成范围在400~700的数100个
c = randi([400 700], 1, 100);
% 将三个向量绘制在同一张图上
figure;
hold on;
plot(a,'Color', all_colors(1, :),'LineWidth', 2);
plot(b,'Color', all_colors(2, :),'LineWidth', 2);
plot(c,'Color', all_colors(3, :),'LineWidth', 2);
xlabel('Tree image/frame','FontName','Times New Roman','FontSize',15);
ylabel('Number of feature points extracted','FontName','Times New Roman','FontSize',15);
set(gca,'FontName','Times New Roman','FontSize',15)%设置坐标轴刻度字体名称，大小
legend('SIFT', 'SURF', 'ORB');
