Text Mining and Analytics
=====================

Code for programming assignments in C++ and bash from the Coursera course 
Text Mining and Analytics, given by ChengXiang Zhai from the University of 
Illinois Urbana-Champaign

Task 1: Part-of-Speech Tagging (10%)
----------------------------
Run POS (Part-of-Speech) tagging on a text document. POS tagging refers to the 
process of assigning part-of-speech tags, such as “noun” or “verb,” to words in 
documents.
- **task-1.sh** - Script for task 1.

Task 2: Word Association Mining (30%)
----------------------------
Mine the words with the strongest syntagmatic relations in a corpus of 10,000 
restaurant reviews extracted from the Yelp Academic Dataset.
We are going to focus on implementing Mutual Information as the association 
measure to mine the top K syntagmatically related words in the Yelp corpus.
- **association.cpp** - Implementation of Mutual Information function for 
syntagmatic relation discovery.
- **task-2.sh** - Script for task 2.

Task 3: Topic Modeling (30%)
----------------------------
Implementtationof  Probabilistic Latent Semantic Analysis (PLSA), which is the 
most basic topic model, and also one of the most useful ones for mining topics 
and themes from text collections. PLSA assumes that each document in the corpus 
is generated from a set of topics represented by a unigram language model. Every
document is also associated with a set of mixing weights that determine the 
proportions of topics in the document. In addition to the topic models, a fixed 
background language model can be also used to explain the generation of very 
frequent words.
- **config.toml** - Configuration file for MeTA toolkit.
- **plsa.cpp** - Implementation of E-Step for Probabilistic Latent Semantic
Analysis.
- **task-3.sh** - Script for task 3.

Task 4: Text Mining Classification (In process)
----------------------------
Use of restaurant reviews to predict whether a set of given restaurants will 
pass the public health inspection tests. We are going to train a classifier 
based on the first 546 restaurants (labeled), and then predict the labels of the
last 200 restaurants. 