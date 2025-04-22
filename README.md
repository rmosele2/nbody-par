# nbody-par
This project simulates an N-Body system using Newtonian gravity.  The parallel implementation uses OpenMP to speed up force calculation and motion updates.  

# Features
-gravitational force modeling
-Parallelized force and motion computation

# Compile Instructions
-build using make
-alternativelty compile manually : g++ -O3 -fopenmp std=c++17 nbody.cpp -o nbody
-./nbodt <input> <dt> <nbstep> <printevery>

# Plotting
python3 plot.py solar.tsv solar.pdf 10000

