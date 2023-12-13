import pandas as pd
import numpy as np
from matplotlib import pyplot as plt
import matplotlib as mpl


plt.rcParams.update({'font.size': 12})
#mpl.rcParams['mathtext.fontset'] = 'cm'


# Read the data from the file
file_path = 'data_vout_m1.dat'  # Replace this with your file path
data = pd.read_csv(file_path, header=None, delim_whitespace=True,names=['t1','s1','t2','s2'])  # Assuming space-separated values
w=[1,2,3,4,5,6]
indices=[]
for wid in w:
    i=0
    for number in data:
        if round(number[0],14)==0.000003 and i not in indices:
            row1=i
            indices.append(i)
        if round(number[0],14)==0.000005 and i not in indices:
            row2=i
            indices.append(i)
            break
        i+=1
    time=data[row1:row2,0]
    signal1=data[row1:row2,1]
    signal2=data[row1:row2,3]

#WIP
