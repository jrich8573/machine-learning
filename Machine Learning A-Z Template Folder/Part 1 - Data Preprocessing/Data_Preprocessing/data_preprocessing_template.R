# Data Preprocessing Template

set.seed(123)

getwd()
setwd('/Users/jasonrich/learn-machine-learning/Machine Learning A-Z Template Folder/Part 1 - Data Preprocessing/Data_Preprocessing/')
################################################################################
#install packages (if missing)
################################################################################
pkgs <- installed.packages()[,1]
pkgs.need <- c('caTools','tidyverse')
pkgs.missing <- pkgs.need[!pkgs.need %in% pkgs]
if (length(pkgs.missing) > 0){
    install.packages(pkgs.missing, dep = TRUE)
}

library(caTools) # Toolkit for data preprocessing in R
library(tidyverse) # Loads tidyverse, financial pkgs, used to get data
################################################################################

# Importing the dataset
dataset = read.csv('Data.csv')
#View(dataset)


# Splitting the dataset into the Training set and Test set
split = sample.split(dataset$DependentVariable, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Feature Scaling
# training_set = scale(training_set)
# test_set = scale(test_set)
