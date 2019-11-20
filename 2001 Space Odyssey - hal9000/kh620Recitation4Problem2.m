

function[OxyFeed,FireSup,RotMot,EBrake]=kh620Recitation4Problem2(o2,v)


[~,~,M1,M2]=kh620Recitation4Problem2(o2,v);
    
    On = 'Oxygen conditions are nominal.';
    Oh = 'Warning, fire hazard!';
    Ol = 'Warning, low oxygen!';
    Gn = 'Gravity is within norms.';
    Gl = 'Warning, beware of floating objects!'; 
    Gh = 'Warning, normal functions may be difficult!';

if strcmp(M1,On) == 1
    
    OxyFeed = 1;
    
    FireSup = 0;
    
elseif strcmp(M1,Oh) == 1
    
    OxyFeed = 0;
    
    FireSup = 1;
    
elseif stcmp(M1,Ol) == 1 && strcmp(mes2,Gh) == 0
    
    RotMot = 0;
    
    OxyFeed = 1;
    
    FireSup = 0; 
    
elseif strcmp(M1,Ol) == 0 && stcrmp(mes2,Gn) == 1
    
    OxyFeed = 1;
    
    RotMot = 1;
    
    EBrake = 0;
    
elseif strcmp(M2,Gh) == 1
    
    RotMot = 0;
    
    EBrake = 1;
    
else strcmp(M2,Gl) == 1 && strcmp(M1,Ol) == 0;
    
    RotMot = 1;
    
    EBrake = 0;
    
    
end
