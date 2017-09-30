## This script 
## 1) reads zip packaged experimental data from the internet and expands it in a work directory
## two sets for train  and test data are extracted
## 2) extract means and standard deviations values from train and test datasets 
## and merge them (append train and test subsets)
## 3) write merged data to a file

library(downloader)
library(readr)
library(plyr)
library(dplyr)
library(tidyr)

## files are manipulated in directory workDir
workDir <- '/work'
if (!file.exists(workDir)){
      dir.create(file.path(workDir))
}

## download and extract zip file 
urlin<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destFile <- paste(workDir,'/dataset.zip',sep='')
download(urlin, dest=destFile, mode="wb") 
unzip ("dataset.zip", exdir = workDir)

## set working directory
datasetDir <- paste(workDir,'/UCI HAR Dataset',sep='')
setwd(datasetDir)

## data sets structures
## subject_train & subject_test contain subject id (person)
## y_train & y_test contain activity id (exercise)
## X_train & y_test contain measures values 

## X Y and subject can be seen as tables 
## with primary key being the row number (not contained in data sets)

## Load activity data and name columns
activity_labels <- read.table( 'activity_labels.txt' )
colnames(activity_labels) <- c("ExerciseID","ExerciseDesc")

# Load features descrition for each data column
features <- read.table('features.txt')

##  Load subject train and test data and name columns
subject_train <- read.table('train/subject_train.txt')
X_train <- read.table('train/X_train.txt')
Y_train <- read.table('train/y_train.txt')
colnames(subject_train) <- "PersonID"
colnames(X_train) <- features[,2]
colnames(Y_train) <- "ExerciseID"

subject_test <- read.table('test/subject_test.txt')
X_test <- read.table('test/X_test.txt')
Y_test <- read.table('test/y_test.txt')
colnames(subject_test) <- "PersonID"
colnames(X_test) <- features[,2]
colnames(Y_test) <- "ExerciseID"

## prepare for merge, add a unique key ID, the line number, to data frame records
subject_train$ID <- seq.int(nrow(subject_train))
X_train$ID       <- seq.int(nrow(X_train))
Y_train$ID       <- seq.int(nrow(Y_train))

subject_test$ID <- seq.int(nrow(subject_test))
X_test$ID       <- seq.int(nrow(X_test))
Y_test$ID       <- seq.int(nrow(Y_test))

## join on unique key ID
merged_train <- join_all(list(subject_train[,],X_train[,],Y_train[,]), by='ID')
## free memory
rm(subject_train,X_train,Y_train)
merged_test <- join_all(list(subject_test[,],X_test[,],Y_test[,]), by='ID')
## free memory
rm(subject_test,X_test,Y_test)

## Merges the training and the test sets to create one data set. (append merged_test to merged_train)
merged_data<- rbind(merged_train, merged_test)
## free memory
rm(merged_train, merged_test)

## Step 4 : Extracts only the measurements on the mean and standard deviation for each measurement
## find positions for labels PersonID, ExerciseID or containing mean or std
cols2select <- grepl('(PersonID|ExerciseID|mean|std)', names(merged_data))
meanstd_data <- merged_data[, cols2select]

## Uses descriptive activity names to name the activities in the data set
meanstd_data_with_label <- join(meanstd_data, activity_labels, by="ExerciseID")
## free memory
rm(meanstd_data)

## From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
grouped_by_data <- meanstd_data_with_label %>% group_by(ExerciseID,PersonID) %>% summarize_if(is.numeric,mean)

write.table(grouped_by_data, file='tidy_dataset.csv', sep=',', row.names = FALSE)


