% read files
original = fileread("input.txt");
cfile = fileread("c_output.txt");
hfile = fileread("haskell_output.txt");
pfile = fileread("prolog_output.txt");

% resize images
oresized = resize(original);
cresized = resize(cfile);
hresized = resize(hfile);
presized = resize(pfile);

% show images
subplot(2,2,1); imshow(oresized);
subplot(2,2,2); imshow(cresized);
subplot(2,2,3); imshow(hresized);
subplot(2,2,4); imshow(presized);

pause(15); 

exit;

function new = resize(obj)
    text = uint8(str2num(obj)); % convert values to numbers then to unsigned chars
    new = reshape(text, 92, 92); % resize array
end