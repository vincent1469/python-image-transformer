img = imread('geo-dash.png'); % read image

img_1d = reshape(im2gray(img), 1, []); % reshape forced grayscale into array

dlmwrite('input.txt', img_1d, 'delimiter', ' '); % write to text file

exit;