---
title: "readme"
author: "phjrdla"
date: "September 30, 2017"
output: html_document
---

# Presentation
Files for Data Cleaning course 3 assignment are found at https://github.com/phjrdla/datasciencecoursera/tree/master

1. readme.md, this file
1. run_analysis.R, script loading an processing datasets
1. tidy_dataset.md, description of dataset created by tidy_dataset.md
1. tidy_dataset.txt, dataset required for assignment

# Data to process
data packaged in a zip file is downloaded from provided url https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Data is made of measures made by various types of sensors while people are performing predefined physical activities.

Data is unzipped in a working directory and processed to produce a subset containing only means and standard deviations grouped
by Activity and Subject which is written in working directory.

# Processing
Processing implements a solution to the requirements below

1. Merges the training and the test sets to create one data set.
* all files are loaded in dataframes
* columns are named using the features dataframe
* a unique key equal to row number is added to dataframes
* a merged dataset is build joining the relevant dataframes on unique key and appending 
2. Extracts only the measurements on the mean and standard deviation for each measurement.
* a dataframe containing exclusively means and standard deviations is build by "greping" column names.
3. Uses descriptive activity names to name the activities in the data set
* description of activities is added to means and standard deviations dataframe by joining it with activity labels dataframe
4. Appropriately labels the data set with descriptive variable names.
* Column names are made somehow more intelligible by substituing cryptic abreviations by something clearer
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject
* means and standard deviations dataframe is piped to group it by activity type and subject while the mean of all columns computed over the groups 

# Output
The dataframe holding means and standard deviations per group is written in working directory to file 'tidy_dataset.txt'. Values are separated by a space and the 1st line holds measurements names.
