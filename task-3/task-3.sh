#! /usr/bin/env bash

cd ~/Escritorio/Assignment/build

# After edit, run the Probabilistic Latent Semantic Analysis (PLSA) 
./plsa ../config.toml --submission

# Generate the submission file
wc < plsa.txt | sed 's/^\s*//g' > plsa.txt.wc

# Run PLSA with the number of topics set to 2, the number of iterations to 300, 
# and λB to 0.8 by executing.
# After the algorithm converges, the top 20 terms in each topic will be printed.
# You should be able to see that the first topic summarizes the reviews on 
# laptops and wearables and that the second topic summarizes the reviews on 
# boats and cars. This is expected since laptops and wearables are more related 
# to each other and can fit into the category of “technology” and, similarly, 
# boats and cars can fit into the category of “transportation.” k=2 allows us to
# get an overview or a coarse description of the dataset. 
./plsa ../config.toml --topics 2 --lambda 0.8 --iter 300 --seed 11 

# After convergence, the top 20 terms in each of the 4 topics will be printed. 
# Clearly, each of the mined topics corresponds to exactly one of the four 
# products in the reviews dataset
./plsa ../config.toml --topics 4 --lambda 0.8 --iter 300 --seed 6