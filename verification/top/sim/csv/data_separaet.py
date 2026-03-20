def separate_data_by_comma(input_file, output_file):
    """Reads a file, separates data by commas, and writes each piece to a new line in a new file."""
    with open(input_file, mode='r', newline='') as infile, open(output_file, mode='w', newline='') as outfile:
        for line in infile:
            # Strip leading/trailing whitespace and split the line by commas
            separated_values = line.strip().split(',')
            # Write each separated value on a new line
            for value in separated_values:
                outfile.write(f"{value.strip()}\n")  # Strip whitespace and write

# Example usage
input_file = 'mnist_kernel_129_10.csv'  # Change to your input file
output_file = 'first_layer_separated.csv'  # Specify the output file

#input_file = 'mnist_kernel_785_128.csv'  # Change to your input file
#output_file = 'second_layer_separated.csv'  # Specify the output file

separate_data_by_comma(input_file, output_file)