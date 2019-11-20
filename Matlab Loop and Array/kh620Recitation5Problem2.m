function [gT] = Kh620Recitation5Problem2 (shearF, tensileF)

gT = zeros(1, length(shearF));

for i = 1:length(shearF)
    
    tG=rec3prob1 (shearF(i),tensileF(i));
    
    switch tG
        
        case 'Grade 1 Low Carbon Steel'
            
            gT(i)=1;
            
        case 'Grade 2 Low Carbon Steel'
            
            gT(i)=2;
            
        case 'Grade 5 Medium Carbon Steel'
            
            gT(i)=5;
            
        case 'Grade 8.2 Low Carbon Boron Steel'
            
            gT(i)=8.2;
            
    end
    
end