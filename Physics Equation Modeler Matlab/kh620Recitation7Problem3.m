function[SPAdj] = kh620Recitation7Problem3 (lalt, day)
[inAngle] = kh620Recitation3Problem1 (lalt,day);

SPAdj = 0;

while abs(SPAdj - inAngle) > .01;
    [SPAdj] = kh620Recitation3Problem2(inAngle, SPAdj);
end
end