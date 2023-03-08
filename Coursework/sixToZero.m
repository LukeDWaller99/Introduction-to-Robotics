function [ M ] = sixToZero(F01, F12, F23, F34, F45, F56)

%To get the overall homoegenous matrix times all of the frames together
M = F01 * F12 * F23 * F34 * F45 * F56;
 
end