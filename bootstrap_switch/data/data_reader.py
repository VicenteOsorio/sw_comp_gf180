import pandas as pd
import numpy as np
from matplotlib import pyplot as plt
import matplotlib as mpl
import io

plt.rcParams.update({'font.size': 12})
#mpl.rcParams['mathtext.fontset'] = 'cm'

# Open the CSV file for reading
with open('vcb_traces.dat', 'r') as file:
    group_num = 1  # Initialize group number
    while True:
        # Read the next group of rows (assuming each group is separated by a line with "0.00000000e+00")
        group_lines = []
        line = file.readline()
        
        # Check if the file has reached the end
        if not line:
            break
        
        # Read lines until a line with "0.00000000e+00" is encountered
        group_started = False  # Flag to check if a group has started
        while "0.00000000e+00" not in line:
            group_started = True  # Set the flag for the current group
            group_lines.append(line)
            line = file.readline()
            if not line:
                break
        
        if group_started:
            # Convert the lines to a DataFrame
            data = pd.read_csv(io.StringIO(''.join(group_lines)), delim_whitespace=True, header=None, names=['time', 'volts'])
            volts = data['volts']
            time = data['time']
            
            # Calculate the capacitance value for the legend label
            capacitance_value = 0.1 * group_num  # 0.1pF increments
            
            # Create a unique color for each group
            color = plt.cm.viridis(group_num / 10)  # Adjust the colormap as needed
            
            # Create and show the plot for the current group without points
            plt.plot(time, volts, label=f'$C_B={capacitance_value:.1f}pF$', color=color, linewidth=2)
            
            # Add None values to separate groups
            plt.plot([None], [None], linestyle='None', color=color, label=None)
            
            plt.xlabel('Time')
            plt.ylabel('Volts')
            plt.title('Plots for Groups')
            
            group_num += 1  # Increment group number

    # Add a legend for all groups
    plt.legend()

# Show all the plots together
plt.show()


