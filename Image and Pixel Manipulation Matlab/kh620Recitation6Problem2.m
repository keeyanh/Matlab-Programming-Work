FN ='doge.jpg'; % Image name
    myI = imread(FN); % converting it to a matrix
        myI = rgb2gray(myI); % converting it to gray scale
Flip = rec6prob1(myI); % Here where you have to write your function instead of "rec6prob1"
imshow(Flip);   % showing your flipped-image