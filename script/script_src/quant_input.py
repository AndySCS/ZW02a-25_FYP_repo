import argparse
import csv

def get_addr() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("-src_addr", help = "source address", default=0)
    parser.add_argument("-dest_addr", help = "destination address", default=0)
    parser.add_argument("-quant_rng", help = "quantization range", default=0)
    args = parser.parse_args()
    return args

def read_csv(path: str) -> list:
    with open(path, 'r') as f:
        number = [int(line.strip()) for line in f]
    return number

def quant_input(input_data: list, quant_rng: int) -> list:
    min_val, max_val = min(input_data), max(input_data)
    scale = (max_val - min_val) / (2**quant_rng - 1) if max_val != min_val else 1.0
    zero_point = int(round(-(2**(quant_rng - 1)) - min_val / scale))
    q_data = [int(round(x / scale + zero_point)) for x in input_data]
    return q_data

def writte_csv(path: str, data: list) -> None:
    with open(path, 'w', newline='') as f:
        writer = csv.writer(f)
        for item in data:
            writer.writerow([item])

if __name__ == "__main__":
    args = get_addr()
    input_data = read_csv(args.src_addr)
    q_data = quant_input(input_data, int(args.quant_rng))
    writte_csv(args.dest_addr, q_data)