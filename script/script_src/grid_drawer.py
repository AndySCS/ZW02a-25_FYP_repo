import tkinter as tk
from tkinter import messagebox
import serial  # Requires: pip install pyserial

class GridDrawer:
    def __init__(self, root, grid_size=28, pixel_size=20):
        self.root = root
        self.root.title("28x28 Grid UART Sender")
        
        # UART Settings - Update 'COM3' or '/dev/ttyUSB0' to your port
        self.port = 'COM3' 
        self.baudrate = 9600
        
        self.grid_size = grid_size
        self.pixel_size = pixel_size
        self.grid_data = [[0 for _ in range(grid_size)] for _ in range(grid_size)]
        
        self.main_frame = tk.Frame(root)
        self.main_frame.pack(padx=10, pady=10)

        self.canvas_dim = grid_size * pixel_size
        self.canvas = tk.Canvas(self.main_frame, width=self.canvas_dim, height=self.canvas_dim, bg="white")
        self.canvas.grid(row=0, column=0, padx=5)
        
        self.draw_grid_lines()
        
        # Sidebar Controls
        self.controls = tk.Frame(self.main_frame)
        self.controls.grid(row=0, column=1, sticky="n", padx=10)

        tk.Label(self.controls, text="Pen Size").pack()
        self.pen_slider = tk.Scale(self.controls, from_=1, to=3, orient=tk.VERTICAL)
        self.pen_slider.set(1)
        self.pen_slider.pack(pady=5)

        self.send_btn = tk.Button(self.controls, text="Send UART", command=self.send_uart, bg="#ccffcc")
        self.send_btn.pack(pady=10, fill='x')

        self.clear_btn = tk.Button(self.controls, text="Clear Canvas", command=self.clear_grid, bg="#ffcccc")
        self.clear_btn.pack(pady=5, fill='x')
        
        self.canvas.bind("<B1-Motion>", self.paint)
        self.canvas.bind("<Button-1>", self.paint)

    def draw_grid_lines(self):
        for i in range(self.grid_size + 1):
            pos = i * self.pixel_size
            self.canvas.create_line(pos, 0, pos, self.canvas_dim, fill="#f0f0f0")
            self.canvas.create_line(0, pos, self.canvas_dim, pos, fill="#f0f0f0")

    def paint(self, event):
        brush_size = self.pen_slider.get()
        center_x, center_y = event.x // self.pixel_size, event.y // self.pixel_size
        offset = brush_size // 2
        
        for dy in range(-offset, brush_size - offset):
            for dx in range(-offset, brush_size - offset):
                nx, ny = center_x + dx, center_y + dy
                if 0 <= nx < self.grid_size and 0 <= ny < self.grid_size:
                    self.grid_data[ny][nx] = 15 # Binary 15 for black # int4 1111
                    self.canvas.create_rectangle(
                        nx*self.pixel_size, ny*self.pixel_size, 
                        (nx+1)*self.pixel_size, (ny+1)*self.pixel_size, 
                        fill="black", outline="#444444", tags="pixel"
                    )

    def send_uart(self):
        """Flattens grid and sends data via Serial."""
        flattened_data = [item for sublist in self.grid_data for item in sublist]
        
        try:
            # Open serial port
            ser = serial.Serial(self.port, self.baudrate, timeout=1)
            
            # Since you asked for 'int4' (4-bit), we will pack two 4-bit pixels into 1 byte.
            # Grid value is 0 or 1. To make it 'int4' range (0-15), we just send the 0 or 1.
            data_to_send = []
            for i in range(0, len(flattened_data), 2):
                # Pack two pixels: Pixel A in high nibble, Pixel B in low nibble
                # This treats each pixel as a 4-bit value technically
                byte_val = (flattened_data[i] << 4) | (flattened_data[i+1] if i+1 < len(flattened_data) else 0)
                data_to_send.append(byte_val)
            
            ser.write(bytearray(data_to_send))
            ser.close()
            print(f"Sent {len(data_to_send)} bytes to {self.port}")
            
        except serial.SerialException as e:
            messagebox.showerror("UART Error", f"Could not open {self.port}\n{e}")

    def clear_grid(self):
        self.canvas.delete("pixel")
        self.grid_data = [[0 for _ in range(self.grid_size)] for _ in range(self.grid_size)]

if __name__ == "__main__":
    root = tk.Tk()
    app = GridDrawer(root)
    root.mainloop()