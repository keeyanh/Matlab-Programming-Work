function[inAngle] = kh620Recitation7Problem1(lalt, day)

declinationAngle = 23.45 *sin(2*pi) * ((284+day)/(362.5));
inAngle = acosd(cosd(declinationAngle)*cosd(lalt)+sind(declinationAngle)*sind(lalt));

if lalt - declinationAngle > 0 
    inAngle = -inAngle;
    
end
end
