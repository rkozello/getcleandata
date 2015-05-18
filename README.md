## Getting and Cleaning Data Course Project
This repository contains R script for Getting and Cleaning Data - Johns Hopkins course on Coursera
Original Assignment was to create one R script called run_analysis.R that does the following. 

  1.  Merges the training and the test sets to create one data set.
  2.  Extracts only the measurements on the mean and standard deviation for each measurement. 
  3.  Uses descriptive activity names to name the activities in the data set
  4.  Appropriately labels the data set with descriptive variable names. 
  5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

My script performs slightly different:
  1. Reads test and train datasets, applies column names from activity_labels.txt, then extracts only measurements on the mean and standard deviation for each measurement. 
  2. Adds Activity and Subject columns to test and train datasets.
  3. Merges the training and the test sets to create one data set.
  4. Creates a summary dataset for every Activity+Subject combination, and writes it to file.

I decided do not change column names to 'something more descriptive than original features.txt' for two reasons: 1) the names provided in this file are descriptive enough, 2)renaming them would require compiling new codebook and create unnesessairy overhead for somebody trying to reproduce this work. As a side effect, there is no need to write new codebook for the resulting dataset - variables in columns are Activity, Subject, and the subset of original activity_labels.txt.

Another guess is what to consider 'only the measurements on the mean and standard deviation for each measurement'. I did not include variables with 'meanFreq' in names, only exact matches for 'mean' and 'std'. It does not make any difference, however (except lower column count).

Required packages: data.table(), plyr()

Before running the script, UCI HAR Dataset must be downloaded first, and unzipped in R working directory.
Tested on GNU/Linux 3.13.0-37-generic #64-Ubuntu SMP, R version 3.1.1.
