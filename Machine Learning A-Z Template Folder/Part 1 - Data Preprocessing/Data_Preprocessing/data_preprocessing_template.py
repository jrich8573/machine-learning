#!/usr/bin/env python3

# Data Preprocessing Template

# Importing the libraries
import os
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from sklearn.cross_validation import train_test_split

# how to set a working directory in python?
os.chdir('/Users/jasonrich/learn-machine-learning/Machine Learning A-Z Template Folder/Part 1 - Data Preprocessing/Data_Preprocessing')

# Importing the dataset
dataset = pd.read_csv('Data.csv')
X = dataset.iloc[:, :-1].values # take all lines and except the last one
y = dataset.iloc[:, 3].values

# Splitting the dataset into the Training set and Test set
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 0.2, random_state = 0)

# Feature Scaling
"""from sklearn.preprocessing import StandardScaler
sc_X = StandardScaler()
X_train = sc_X.fit_transform(X_train)
X_test = sc_X.transform(X_test)
sc_y = StandardScaler()
y_train = sc_y.fit_transform(y_train)"""
