from PIL import Image
import numpy as np
import argparse
import os
import glob
import re
from numpy.lib.stride_tricks import sliding_window_view

def get_img_dir():
    parser = argparse.ArgumentParser()
    parser.add_argument("-ImgDir", help = "dir of image")
    parser.add_argument("-txtDir", help = "dir of output txt file (including file name)")
    args = parser.parse_args()
    img_dir = args.ImgDir
    output_dir = args.txtDir
    if os.path.isfile(img_dir):
        return img_dir, output_dir
    else:
        exit

def load_image( infilename ) :
    img = Image.open( infilename ).convert('L')
    img.load()
    data = np.asarray( img, dtype="int8" )
    return data

def reshape_arr_for_cnn(nparray):
    patches = sliding_window_view(nparray, (3, 3))
    return patches.reshape(9, -1).T

def nparray2txt(nparray, output_dir):
    np.savetxt(output_dir, nparray, fmt='%d', delimiter=',')

if __name__ == '__main__':
    img_dir, output_dir= get_img_dir()
    img_data = load_image(img_dir)
    reshaped_img_data = reshape_arr_for_cnn(img_data) 
    nparray2txt(reshaped_img_data, output_dir)
    #print(reshaped_img_data.shape)
