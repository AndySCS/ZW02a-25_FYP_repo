import argparse
from dataclasses import dataclass, field
import os
import re

@dataclass
class AccuracyResult:
    total_num: int = 0
    correct_num: int = 0
    accuracy: float = 0.0
    exp_cnt: dict = field(default_factory=lambda:{i:0 for i in range(10)})
    act_cnt: dict = field(default_factory=lambda:{i:0 for i in range(10)})

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

        accuracy_result.exp_cnt[sample_label] += 1
        accuracy_result.act_cnt[model_output] += 1

        accuracy_result.total_num += 1
        if model_output == sample_label:
            accuracy_result.correct_num += 1

    return accuracy_result  # Return the accuracy result

def print_result(accuracy_result: AccuracyResult) -> None:
    accuracy_result.accuracy = accuracy_result.correct_num / accuracy_result.total_num if accuracy_result.total_num > 0 else 0.0
    print(f"Total samples: {accuracy_result.total_num}")
    print(f"Correct predictions: {accuracy_result.correct_num}")
    print(f"Accuracy: {accuracy_result.accuracy:.4f}")
    print(f"Expected count per class: {accuracy_result.exp_cnt}")
    print(f"Actual count per class: {accuracy_result.act_cnt}")

if __name__ == '__main__':
    addr = get_addr()
    seeds = get_all_seed(addr)
    accuracy_result = get_acc(addr, seeds)
    print_result(accuracy_result)
