def decimal_to_8bit_hexadecimal(decimal_number):
    """Convert a decimal number to an 8-bit hexadecimal format."""
    if decimal_number < -128 or decimal_number > 127:
        raise ValueError("The number must be between -128 and 127 for 8 bits.")
    
    if decimal_number < 0:
        decimal_number = (1 << 8) + decimal_number  # Convert to two's complement
    
    return '{:02X}'.format(decimal_number)

def read_file_lines(filename):
    """Read every line from a file and return a list of lines."""
    try:
        with open(filename, 'r') as file:
            lines = file.readlines()  # Read all lines
        return [line.strip() for line in lines]  # Remove newline characters
    except FileNotFoundError:
        print(f"The file '{filename}' does not exist.")
        return []
    except Exception as e:
        print(f"An error occurred: {e}")
        return []

def format_with_commas(lines):
    """Add a comma after every 8 lines."""
    formatted_lines = []
    for i in range(len(lines)):
        formatted_lines.append(lines[i])
        if (i + 1) % 8 == 0:  # Every 8 lines
            formatted_lines.append(",")  # Append a comma
    return formatted_lines

def write_lines_to_file(filename, lines):
    """Write a list of lines into a file."""
    with open(filename, 'w') as file:
        for line in lines:
            file.write(line + '\n')
def merge_lines(lines):
    """Merge every 8 lines into a single line."""
    merged_lines = []
    for i in range(0, len(lines), 8):
        segment = lines[i:i + 8]
        merged_lines.append(''.join(segment))  # Combine into a single line
    return merged_lines

def reverse_hex_pairs(line):
    """Reverse every two hex elements in a given line."""
    # Initialize a list to store reversed hex pairs
    reversed_hex = []
    for i in range(0, 16, 2):
        # Check if a pair exists and reverse them
            reversed_hex.append(line[15-i-1])  # Add second hex first
            reversed_hex.append(line[15-i])        # Add first hex second
    return ''.join(reversed_hex)             # Join back to a string

def add_commas(lines):
    """Add a comma after every 8 lines."""
    with_commas = []
    for i in range(len(lines)):
        with_commas.append(lines[i]+",") # Append a comma after every 8 lines
    return with_commas

def main():
    #input_filename = 'first_layer_separated.csv'
    #output_filename = 'first_layer_trans.csv'
    
    input_filename = 'full_img0.csv'
    output_filename = 'img0_external_bram.coe'
     
    #input_filename = 'second_layer_separated.csv'
    #output_filename = 'second_layer_trans.csv'
    # Read lines from output.txt
    lines = read_file_lines(input_filename)
    
    hex_lines = []
    
    for line in lines:
        try:
            decimal_number = int(line)  # Convert line to decimal
            hex_string = decimal_to_8bit_hexadecimal(decimal_number)  # Convert to 8-bit hex
            hex_lines.append(hex_string)  # Store hex representation
        except ValueError:
            print(f"Invalid input '{line}' is skipped.")
    
    # Add commas after every 8 lines
    #formatted_lines = format_with_commas(hex_lines)
    merged_hex_lines = merge_lines(hex_lines)
    
    #reverse the line arrangement 
    reverse_lines = [reverse_hex_pairs(merged_hex_lines) for merged_hex_lines in merged_hex_lines]
    
    #add comma to the end of each line
    add_comma_lines = add_commas(reverse_lines)
    
    # Write the formatted hexadecimal lines to trans.txt
    write_lines_to_file(output_filename, add_comma_lines)

if __name__ == "__main__":
    main()