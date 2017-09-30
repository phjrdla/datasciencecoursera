---
title: "tidy_dataset"
author: "phjrdla"
date: "September 30, 2017"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Usage:

     read.table("tidy_dataset.txt")
     
     data set found at https://github.com/phjrdla/datasciencecoursera/blob/master/tidy_dataset.txt
     
## Format:

     A data frame with 180 observations on the following 81 variables.

1.     'ExerciseID' a numeric vector

1.     'PersonID' a numeric vector

1.     'TimeBodyAcc-mean-X' a numeric vector

1.     'TimeBodyAcc-mean-Y' a numeric vector

1.     'TimeBodyAcc-mean-Z' a numeric vector

1.     'TimeBodyAcc-std-X' a numeric vector

1.     'TimeBodyAcc-std-Y' a numeric vector

1.     'TimeBodyAcc-std-Z' a numeric vector

1.     'TimeGravityAcc-mean-X' a numeric vector

1.     'TimeGravityAcc-mean-Y' a numeric vector

1.     'TimeGravityAcc-mean-Z' a numeric vector

1.     'TimeGravityAcc-std-X' a numeric vector

1.     'TimeGravityAcc-std-Y' a numeric vector

1.     'TimeGravityAcc-std-Z' a numeric vector

1.     'TimeBodyAccJerk-mean-X' a numeric vector

1.     'TimeBodyAccJerk-mean-Y' a numeric vector

1.     'TimeBodyAccJerk-mean-Z' a numeric vector

1.     'TimeBodyAccJerk-std-X' a numeric vector

1.     'TimeBodyAccJerk-std-Y' a numeric vector

1.     'TimeBodyAccJerk-std-Z' a numeric vector

1.     'TimeBodyGyro-mean-X' a numeric vector

1.     'TimeBodyGyro-mean-Y' a numeric vector

1.     'TimeBodyGyro-mean-Z' a numeric vector

1.     'TimeBodyGyro-std-X' a numeric vector

1.     'TimeBodyGyro-std-Y' a numeric vector

1.     'TimeBodyGyro-std-Z' a numeric vector

1.     'TimeBodyGyroJerk-mean-X' a numeric vector

1.     'TimeBodyGyroJerk-mean-Y' a numeric vector

1.     'TimeBodyGyroJerk-mean-Z' a numeric vector

1.     'TimeBodyGyroJerk-std-X' a numeric vector

1.     'TimeBodyGyroJerk-std-Y' a numeric vector

1.     'TimeBodyGyroJerk-std-Z' a numeric vector

1.     'TimeBodyAccMag-mean' a numeric vector

1.     'TimeBodyAccMag-std' a numeric vector

1.     'TimeGravityAccMag-mean' a numeric vector

1.     'TimeGravityAccMag-std' a numeric vector

1.     'TimeBodyAccJerkMag-mean' a numeric vector

1.     'TimeBodyAccJerkMag-std' a numeric vector

1.     'TimeBodyGyroMag-mean' a numeric vector

1.     'TimeBodyGyroMag-std' a numeric vector

1.     'TimeBodyGyroJerkMag-mean' a numeric vector

1.     'TimeBodyGyroJerkMag-std' a numeric vector

1.     'FreqBodyAcc-mean-X' a numeric vector

1.     'FreqBodyAcc-mean-Y' a numeric vector

1.     'FreqBodyAcc-mean-Z' a numeric vector

1.     'FreqBodyAcc-std-X' a numeric vector

1.     'FreqBodyAcc-std-Y' a numeric vector

1.     'FreqBodyAcc-std-Z' a numeric vector

1.     'FreqBodyAcc-meanFreq-X' a numeric vector

1.     'FreqBodyAcc-meanFreq-Y' a numeric vector

1.     'FreqBodyAcc-meanFreq-Z' a numeric vector

1.     'FreqBodyAccJerk-mean-X' a numeric vector

1.     'FreqBodyAccJerk-mean-Y' a numeric vector

1.     'FreqBodyAccJerk-mean-Z' a numeric vector

1.     'FreqBodyAccJerk-std-X' a numeric vector

1.     'FreqBodyAccJerk-std-Y' a numeric vector

1.     'FreqBodyAccJerk-std-Z' a numeric vector

1.     'FreqBodyAccJerk-meanFreq-X' a numeric vector

1.     'FreqBodyAccJerk-meanFreq-Y' a numeric vector

1.     'FreqBodyAccJerk-meanFreq-Z' a numeric vector

1.     'FreqBodyGyro-mean-X' a numeric vector

1.     'FreqBodyGyro-mean-Y' a numeric vector

1.     'FreqBodyGyro-mean-Z' a numeric vector

1.     'FreqBodyGyro-std-X' a numeric vector

1.     'FreqBodyGyro-std-Y' a numeric vector

1.     'FreqBodyGyro-std-Z' a numeric vector

1.     'FreqBodyGyro-meanFreq-X' a numeric vector

1.     'FreqBodyGyro-meanFreq-Y' a numeric vector

1.     'FreqBodyGyro-meanFreq-Z' a numeric vector

1.     'FreqBodyAccMag-mean' a numeric vector

1.     'FreqBodyAccMag-std' a numeric vector

1.     'FreqBodyAccMag-meanFreq' a numeric vector

1.     'FreqBodyAccJerkMag-mean' a numeric vector

1.     'FreqBodyAccJerkMag-std' a numeric vector

1.     'FreqBodyAccJerkMag-meanFreq' a numeric vector

1.     'FreqBodyGyroMag-mean' a numeric vector

1.     'FreqBodyGyroMag-std' a numeric vector

1.     'FreqBodyGyroMag-meanFreq' a numeric vector

1.     'FreqBodyGyroJerkMag-mean' a numeric vector

1.     'FreqBodyGyroJerkMag-std' a numeric vector

1.     'FreqBodyGyroJerkMag-meanFreq' a numeric vector

## Check
After loading dim(tidy_dataset) should return *[1] 180  81*
