import argparse
from dataclasses import dataclass, field
import os
import re
import csv

@dataclass
class AccuracyResult:
    total_num: int = 0
    correct_num: int = 0
    software_correct_num: int = 0
    accuracy: float = 0.0
    exp_cnt: dict = field(default_factory=lambda:{i:0 for i in range(10)})
    act_cnt: dict = field(default_factory=lambda:{i:0 for i in range(10)})
    software_cnt: dict = field(default_factory=lambda:{i:0 for i in range(10)})

def get_addr() -> str:
    parser = argparse.ArgumentParser()
    parser.add_argument("-addr", help = "model output address", default=0)
    args = parser.parse_args()
    return args.addr

def get_all_seed(addr: str)-> list:
    pattern = re.compile(r"model_output(\d+)\.txt")
    seeds = []
    for filename in os.listdir(addr):
        match = pattern.fullmatch(filename)
        if match:
            seeds.append(int(match.group(1)))  # convert seed to integer
    return seeds

def get_software_result(addr: str, seed: int) -> float:
    sample_path = os.path.join(addr, f"sample{seed}.csv")
    def read_input_from_file(path: str) -> list:
        with open(sample_path, 'r') as f:
            number = [int(line.strip()) for line in f]
        return number
    def read_csv_from_file(path: str) -> list:
        with open(path, 'r') as f:
            reader = csv.reader(f)
            data = list(reader)
        return data
    def fc_layer_cal(input_data: list, weights: list) -> list:
        output = []
        for weight in weights:
            sum = 0
            for j in range(len(input_data) - 1):
                sum += input_data[j] * int(weight[j])
            output.append(sum + int(weight[-1]))  # Add bias term
        return output
    def relu_activation(data: list) -> list:
        return [max(0, x) for x in data]
    def softmax_activation(data: list) -> list:
        max_val = max(data)
        data_shifted = [x - max_val for x in data]  # Shift for numerical stability
        exp_data = [pow(2.71828, x) for x in data_shifted]
        sum_exp = sum(exp_data)
        return [x / sum_exp for x in exp_data]

    sample_input = read_input_from_file(sample_path)
    first_layer_weight_path = "csv/mnist_kernel_785_128.csv"
    second_layer_weight_path = "csv/mnist_kernel_129_10.csv"
    first_layer_weight = read_csv_from_file(first_layer_weight_path)
    second_layer_weight = read_csv_from_file(second_layer_weight_path)
    first_layer_output = fc_layer_cal(sample_input, first_layer_weight)
    first_layer_output = relu_activation(first_layer_output)
    second_layer_output = fc_layer_cal(first_layer_output, second_layer_weight)
    second_layer_output = softmax_activation(second_layer_output)
    predicted_label = second_layer_output.index(max(second_layer_output))

    return predicted_label    

def get_acc(addr: str, seeds: list) -> AccuracyResult:
    accuracy_result = AccuracyResult()

    def get_num(addr: str) -> int:
        with open(addr, 'r') as f:
            content = f.read()
            return int(content.strip())
    for seed in seeds:
        model_output_path = os.path.join(addr, f"model_output{seed}.txt")
        sample_label_path = os.path.join(addr, f"sample_label{seed}.txt")
        model_output = get_num(model_output_path)
        sample_label = get_num(sample_label_path)
        software_label = get_software_result(addr, seed)

        accuracy_result.exp_cnt[sample_label] += 1
        accuracy_result.act_cnt[model_output] += 1
        accuracy_result.software_cnt[software_label] += 1

        accuracy_result.total_num += 1
        if model_output == sample_label:
            accuracy_result.correct_num += 1
        if software_label == sample_label:
            accuracy_result.software_correct_num += 1
    return accuracy_result  # Return the accuracy result

def print_result(accuracy_result: AccuracyResult) -> None:
    accuracy_result.accuracy = accuracy_result.correct_num / accuracy_result.total_num if accuracy_result.total_num > 0 else 0.0
    print(f"Total samples: {accuracy_result.total_num}")
    print(f"Correct predictions: {accuracy_result.correct_num}")
    print(f"Software Correct predictions: {accuracy_result.software_correct_num}")
    print(f"Accuracy: {accuracy_result.accuracy:.4f}")
    print(f"Software Accuracy: {accuracy_result.software_correct_num / accuracy_result.total_num:.4f}")
    print(f"Expected count per class: {accuracy_result.exp_cnt}")
    print(f"Actual count per class: {accuracy_result.act_cnt}")
    print(f"Software Actual count per class: {accuracy_result.software_cnt}")


if __name__ == '__main__':
    addr = get_addr()
    seeds = get_all_seed(addr)
    accuracy_result = get_acc(addr, seeds)
    print_result(accuracy_result)
