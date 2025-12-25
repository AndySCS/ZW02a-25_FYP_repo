from PIL import Image
import numpy as np
import argparse
import os
import glob
import re
import pandas as pd
import numpy as np
import argparse

def get_img_dir():
    parser = argparse.ArgumentParser()
    parser.add_argument("-imgDir", help = "dir of image")
    parser.add_argument("-csvDir", help = "dir of output txt file (including file name)")
    args = parser.parse_args()
    img_dir = args.imgDir
    csv_dir = args.csvDir
    if os.path.isfile(csv_dir):
        return img_dir, csv_dir
    else:
        exit

def csv2nparray(csvDir):
    # Read the CSV file into a pandas DataFrame
    df = pd.read_csv(csvDir)
    # Convert the DataFrame to a NumPy array
    np_array = np.loadtxt(csvDir, delimiter=",", skiprows=0)
    print(np_array.shape)
    return np_array

def nparray2img(np_array):
    # Create a 2D grayscale array with values 0-255
    gray_data_flatten = np_array.flatten()[:510*510]
    gray_data_norm = ((gray_data_flatten - gray_data_flatten.min()) / (gray_data_flatten.max() - gray_data_flatten.min()) * 255).astype(np.uint8)
    gray_data = gray_data_norm.reshape(510, 510)
    # Convert to PIL Image using 'L' mode
    gray_img = Image.fromarray(gray_data, 'L')
    gray_img.show()
    # gray_img.save("grayscale_image.png")

if __name__ == '__main__':
    img_dir, csv_dir= get_img_dir()
    img_data = csv2nparray(csv_dir)
    nparray2img(img_data) 