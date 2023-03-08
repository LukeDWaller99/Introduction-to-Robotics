function [q1, q2, q3] = trajectoryPlot (q)
  
figure %create a figure
for i = 1:size(q)
    q1(i,1) = q(i,1);   %get the values for the first joint and put in q1
    q2(i,1) = q(i,2);   %get the values for the second joint and put in q2
    q3(i,1) = q(i,3);   %get the values for the third joint and put in q3
    q4(i,1) = q(i,4);   %get the values for the forth joint and put in q4
    q5(i,1) = q(i,5);   %get the values for the fith joint and put in q5
    q6(i,1) = q(i,6);   %get the values for the sitxh joint and put in q6
    hold on
end


hold on
h = plot(q1, 'r-.');    %plot q1 in red, dash-dot line 
h = plot(q2, 'b-');     %plot q2 in blue, solid line 
h = plot(q3, 'm--');    %plot q3 in magenta, dashed line
h = plot(q4, 'k:');     %plot q4 in black, dotted line
h = plot(q5, 'c');      %plot q5 in cyan, solid line (default)
h = plot(q6);           %plot line in random colour, solid line(default)

%title for the figure 
title('Student No: 10618407 - Angular Trajectories for 6DOF arm')
%set the legend for the grapgh, top right hand corner, vertical
legend({'Q1','Q2','Q3','Q4','Q5','Q6'},'Location','northeast','Orientation','vertical');
%label the x-axis
xlabel('Time[arb]')
%label the y-axis
ylabel('Angle [rads]') 

end