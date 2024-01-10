import subprocess

print("Running MATLAB Code 1")

# Specify the full path to the MATLAB executable
matlab_executable = r'C:\Program Files\MATLAB\R2023b\bin\matlab.exe'

# Run MATLAB Code 1
m1process = subprocess.run([matlab_executable, '-batch', "run('matlabcode1.m');"], capture_output=True)

# Load the MATLAB code
with open('input.txt', 'r') as file:
    input_array = [int(value) for line in file for value in line.split()] # using code from Dat Truong's helpful guide

# Compile and run C output
subprocess.run(["gcc", "cprog.c", "-o", "cprog"])
cprocess = subprocess.run(["./cprog"] + [str(x) for x in input_array], capture_output=True, text=True) # fixed an error that subprocess expected str instead of int

# Save C input to a text file
with open('c_output.txt', 'w') as f:
    f.write(cprocess.stdout)

# Compile and run Haskell program
subprocess.run(['ghc', 'hprog.hs'])
hprocess = subprocess.run(['./hprog'] + [str(x) for x in input_array], text=True, capture_output=True)

# Save Haskell input to a text file
with open('haskell_output.txt', 'w') as f:
    f.write(hprocess.stdout)

# Compile and run Prolog program
prolog_input = "[" + ",".join(map(str, input_array)) + "]."
pprocess = subprocess.run(['swipl', '-q', '-g', 'main', '-t', 'halt', 'pprog.pl'], input=prolog_input, capture_output=True, text=True)

# Save Prolog input to a text file
with open('prolog_output.txt', 'w') as f:
    f.write(pprocess.stdout)

print("Running MATLAB Code 2")

# Run MATLAB Code 2
m2process = subprocess.run([matlab_executable, '-batch', "run('matlabcode2.m');"], capture_output=True)
