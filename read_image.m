function [Im M N L] = read_image (nama_image)
Im=imread(nama_image);
[M N L]=size(Im);

