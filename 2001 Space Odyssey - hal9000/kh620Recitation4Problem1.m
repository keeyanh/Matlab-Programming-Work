function [o,w,m1,m2] = kh620Recitation4Problem1(o2,v)

    oe = 21;%Earth's O2 Level
    g = 9.81; %Gravitational Constant
    r = 8; %radius
    a = (v^2)/r;
    o = oe - o2; %Oxygen Level difference between Earth and Ship
    w = g - a; %Acceleration due to gravity on Ship

    
if o < -29
    m1 = 'Warning, low oxygen!'; %These are the respones the user will recieve
    elseif o > 7
    m1 = 'Warning, fire hazard!'; 
    else
    m1 = 'Oxygen conditions are nominal'; 
end



if ga < -9.81/2
    m2 = 'Warning, beware of floating objects!'; 
elseif ga > 9.81/2
    m2 = 'Warning, normal functions may be difficult!';
else
    m2 = 'Gravity conditions are nominal.';
end