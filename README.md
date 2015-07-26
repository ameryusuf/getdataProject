---
title: "README"
author: "Amer Malik"
date: "July 25, 2015"
output: 
  md_document:
    variant: markdown_github
---

# Getting and Cleaning Data - Course Project

## Project Description
This is part of the course project for the Getting and Cleaning Data course, which is part of the Data Science Specialization offered at Johns Hopkins University on Coursera.

The purpose of this project is to demonstrate how to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

#### Note on packages to load before executing the code in run_analysis.R

```{r}

library(plyr)
library(dplyr)

```

[The source data for this project can be found here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)


### Steps implemented in the run_analysis.R

1. Download the dataset from the above source
2. Load the training and testing datasets and their activity and subject labels.
3. Append the activity and subject dataframes with the respective training and testing datasets
4. Load the activity and features dataframes from the respective text files
5. Merge the two datasets (which in fact is binding the two dataframes to not lose any information) 
6. Remove some of the variables from the environment for less confusion
7. Use the grep function to match the pattern for mean() and std() measurements and create an array of indices
8. Subset the merged dataset with the mean() and std() measurements using the index array
9. Transpose the dataframe to get a character array of all the names of the measurement variables
10. Assign names of the activities for descriptive activity names
11. Label the data set with descriptive variable names
12. Create an independent tidy data set, which contains the average of each variable for each activity and each subject
13. Write the tidy dataset to a text file 
   

### Additional Information
Additional information about the output dataset, tidy.txt and its variable descriptions can be found in the  CodeBook.md file.