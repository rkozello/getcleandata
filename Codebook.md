## Getting and Cleaning Data Course Project results
## Data Dictionary

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

According to Course Project Assignmeant, only mean and standard deviation columns were selected, and then results aggregated for each activity (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS), and each subject (30 persons) by averaging appropriate results. Resulting numbers rounded to 4 digits after dot to make a file compact and readable.

Here is a list of variables selected from original file for summary. Variable numbetrs and names are the same as in the original features.txt file. Additional variables in the summary dataset are Activity and Subject.

1 "Activity"	Variable width text
   Type of activity 
	LAYING
	SITTING
	STANDING
	WALKING
	WALKING_DOWNSTAIRS
	WALKING_UPSTAIRS
2 "Subject"	2
   Number 1 to 30, representing volunteer
3 "tBodyAcc.mean...X"	7
   Body Acceleration signal mean - X axis
4 "tBodyAcc.mean...Y"	7
   Body Acceleration signal mean - Y axis
5 "tBodyAcc.mean...Z"	7
   Body Acceleration signal mean - Z axis
6 "tBodyAcc.std...X"	7
   Body Acceleration signal standard deviation - X axis
7 "tBodyAcc.std...Y	7
   Body Acceleration signal standard deviation - Y axis
8 "tBodyAcc.std...Z	7
   Body Acceleration signal standard deviation - Y axis
"tGravityAcc.mean...X" "tGravityAcc.mean...Y" "tGravityAcc.mean...Z" "tGravityAcc.std...X" "tGravityAcc.std...Y" "tGravityAcc.std...Z" "tBodyAccJerk.mean...X" "tBodyAccJerk.mean...Y" "tBodyAccJerk.mean...Z" "tBodyAccJerk.std...X" "tBodyAccJerk.std...Y" "tBodyAccJerk.std...Z" "tBodyGyro.mean...X" "tBodyGyro.mean...Y" "tBodyGyro.mean...Z" "tBodyGyro.std...X" "tBodyGyro.std...Y" "tBodyGyro.std...Z" "tBodyGyroJerk.mean...X" "tBodyGyroJerk.mean...Y" "tBodyGyroJerk.mean...Z" "tBodyGyroJerk.std...X" "tBodyGyroJerk.std...Y" "tBodyGyroJerk.std...Z" "tBodyAccMag.mean.." "tBodyAccMag.std.." "tGravityAccMag.mean.." "tGravityAccMag.std.." "tBodyAccJerkMag.mean.." "tBodyAccJerkMag.std.." "tBodyGyroMag.mean.." "tBodyGyroMag.std.." "tBodyGyroJerkMag.mean.." "tBodyGyroJerkMag.std.." "fBodyAcc.mean...X" "fBodyAcc.mean...Y" "fBodyAcc.mean...Z" "fBodyAcc.std...X" "fBodyAcc.std...Y" "fBodyAcc.std...Z" "fBodyAccJerk.mean...X" "fBodyAccJerk.mean...Y" "fBodyAccJerk.mean...Z" "fBodyAccJerk.std...X" "fBodyAccJerk.std...Y" "fBodyAccJerk.std...Z" "fBodyGyro.mean...X" "fBodyGyro.mean...Y" "fBodyGyro.mean...Z" "fBodyGyro.std...X" "fBodyGyro.std...Y" "fBodyGyro.std...Z" "fBodyAccMag.mean.." "fBodyAccMag.std.." "fBodyBodyAccJerkMag.mean.." "fBodyBodyAccJerkMag.std.." "fBodyBodyGyroMag.mean.." "fBodyBodyGyroMag.std.." "fBodyBodyGyroJerkMag.mean.." "fBodyBodyGyroJerkMag.std.."
