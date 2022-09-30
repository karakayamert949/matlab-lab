clc
clear

load("division_values.mat");
photo = imread("EncryptedImage.png");
photo = double(photo);
decryptedPhoto = zeros(size(photo,1),size(photo,2),size(photo,3));

for k = 1:size(photo,3)
    for i= 1:size(photo,1)
        for j = 1:size(photo,2)

            if mod(i+j,2) == 0
                decryptedPhoto(i,j,k) = (photo(i,j,k) + division(i,j,k)*100 -127) / 4;
            else
                decryptedPhoto(i,j,k) = (photo(i,j,k) + division(i,j,k)*200 -255) / 4;
            end

        end
    end
end

decryptedPhoto = uint8(decryptedPhoto);
image(decryptedPhoto);

