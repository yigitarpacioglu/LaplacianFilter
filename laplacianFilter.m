function Output_Im = laplacianFilter(image)

% Here, as you can see, there is no filter size accepted as input for
% function. Purpose of this, it is desired that us to use fixed size filter
% Therefore filter will be chosen arbitrary. But logic the behind, has been
% descripted in report.

%  flt =         [   0 1  0;  
%                    1 -4 1;         
%                    0 1 0];


% Here 1/4 and 1/16 are the normalizing coefficent.
% You can choose and see it's effects in another mask implementetion

flt   =        [ 0 0  -1  0 0; 
                0 -1  -2  -1 0; 
               -1 -2 16 -2 -1;
                0 -1  -2  -1 0;
                0 0  -1  0 0];

[Size,~]=size(flt);
Sz=(Size-1)*0.5;

[Row,Col]=size(image);

Output_Im=image;

for i=1+Sz:Row-Sz
    for j=1+Sz:Col-Sz
        sum=0;
        for k=-Sz:Sz
            for l=-Sz:Sz
            image_pixel=image(i+k,j+l);
            filter_pixel=flt(k+Sz+1,l+Sz+1);
            sum= sum +(filter_pixel*image_pixel);            
            end
        end 
        Output_Im(i,j)=sum;
    end
end     
end     