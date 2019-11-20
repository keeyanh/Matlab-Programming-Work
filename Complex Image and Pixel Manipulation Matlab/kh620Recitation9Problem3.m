function[dogeblk] = kh620Recitation9Problem3(dogeblk, hiddenTxt)

dogeblk = imread(dogeblk);
hiddenTxt = csvread(hiddenTxt);
hiddenTxt = uint8(hiddenTxt);

if bool1 == 1
    dogeblk = kh620Recitation9Problem2(dogeblk);
end
if bool2 == 1
    hiddenTxt = kh620Recitation9Problem1(hiddenTxt);
end

if strcmp(color,'red')
    dogeblk(:,:,1) = hiddenTxt;
elseif strcmp (color,'green')
    dogeblk(:,:,2) = hiddenTxt;
elseif strcmp(color,'blue')
    dogeblk(:,:,3) = hiddenTxt;
end

