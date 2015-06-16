## Getting and Cleaning Data Course Project
This repository contains R script for Getting and Cleaning Data - Johns Hopkins course on Coursera.  
The Assignment requires to create one R script called run_analysis.R that does the following. 

  1.  Merges the training and the test sets to create one data set.
  2.  Extracts only the measurements on the mean and standard deviation for each measurement. 
  3.  Uses descriptive activity names to name the activities in the data set
  4.  Appropriately labels the data set with descriptive variable names. 
  5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

I decided do not change column names to 'something more descriptive than original features.txt', because names provided in this file are descriptive enough - variables in columns are Activity, Subject, and the subset of original features.txt file.

Another guess is what to consider 'only the measurements on the mean and standard deviation for each measurement'. I did not include variables with 'meanFreq' in names, only exact matches for 'mean' and 'std'. It does not make any difference, however (except lower column count).

Required packages: data.table(), plyr()

Before running the script, UCI HAR Dataset must be downloaded first, and unzipped in R working directory.
Tested on GNU/Linux 3.13.0-37-generic #64-Ubuntu SMP, R version 3.1.1.
