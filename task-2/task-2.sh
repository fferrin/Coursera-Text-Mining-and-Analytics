#! /usr/bin/env bash

cd ~/Escritorio/Assignment/build
# You should see the top 50 word pairs printed along with their numbers of 
# occurrence. As you have noticed, many of the top terms are very common and not
# interesting. This can be explained by the fact that a high number of 
# co-occurrences alone does not imply high correlation; for words to be highly 
# correlated, they must co-occur frequently and have relatively low individual 
# occurrences.
./association ../config.toml --words 50

# Recompile when change `./Assignment/associaton.cpp`
cmake .. -DCMAKE_BUILD_TYPE=Release; make -j8

# `association.cpp` contains now an implementation of mutual information
./association ../config.toml --submission

# Submit
cd ../
wc < mutual-information.txt | sed 's/^\s*//g' > mutual-information.txt.wc

# Run association to print the top 50 syntagmatically related terms based on the
# mutual information function. As you can see, the words are highly correlated 
# and provide a good summary of the Yelp reviews
./association ../config.toml --words 50 --MI