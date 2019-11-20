function[SPAngle] = kh620Recitation7Problem2(inAngle,solarAngle)

if solarAngle > inAngle
    SPAngle = solarAngle-.01;
elseif SPAngle < inAngle
    SPAngle = solarAngle+.01;
else SPAngle = solarAngle;
end
end
