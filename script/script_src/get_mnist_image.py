import numpy as np
import argparse
import matplotlib.pyplot as plt
from datasets import load_dataset

ds = load_dataset("ylecun/mnist", split='train')

def get_seed() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("-seed", help = "random seed", default=1000)
    args = parser.parse_args()
    return int(args.seed)

def download_sample() -> None:
    # Load MNIST dataset (downloads automatically if not cached)
    x_train = ds['image']
    y_train = ds['label']
    # Select just one sample (e.g., the first training image)
    idx = np.random.choice(len(x_train))
    sample_image, sample_label = x_train[idx], str(y_train[idx])
    img = sample_image.convert("L")   # "L" mode = 8-bit pixels, black and white
    # Convert to NumPy array
    arr = np.array(img, dtype=np.int8)
    # Flatten into 1D
    flat_arr = arr.flatten()
    np.savetxt("img.csv", flat_arr, delimiter=",", fmt="%d")
    with open('label.txt', 'w') as f:
        f.write(sample_label)

if __name__ == '__main__':
    seed = get_seed()
    np.random.seed(seed)
    download_sample()