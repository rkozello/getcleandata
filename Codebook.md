## Getting and Cleaning Data Course Project results
### Data Dictionary
Original dataset represents data collected from the accelerometers of the Samsung Galaxy S smartphone. Theare are two types of signals: prefix 't' to denote time domain, and the 'f' to indicate frequency domain signals.  
According to Course Project Assignmeant, only mean and standard deviation columns subsetted from it, and then results aggregated for each activity (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS), and each subject (30 persons) by averaging appropriate numbers.  
Here is a list of variables selected from original file for summary. Variable names are similar to the original features.txt file, but "(", ")" and "-" symbols are replaced by dots. Additional variables in the summary dataset are Activity and Subject.  
1. "Activity"	Variable width text  
  Type of activity  
  LAYING  
  SITTING   
  STANDING   
  WALKING   
  WALKING_DOWNSTAIRS   
  WALKING_UPSTAIRS   
2. "Subject"	Integer (2)   
   Number 1 to 30, representing volunteer  
3. "tBodyAcc.mean...X"		Fixed-point  
   Body Acceleration signal mean - X axis  
4. "tBodyAcc.mean...Y"		Fixed-point  
   Body Acceleration signal mean - Y axis  
5. "tBodyAcc.mean...Z"		Fixed-point  
   Body Acceleration signal mean - Z axis  
6. "tBodyAcc.std...X"		Fixed-point  
   Body Acceleration signal standard deviation - X axis  
7. "tBodyAcc.std...Y" 		Fixed-point  
   Body Acceleration signal standard deviation - Y axis  
8. "tBodyAcc.std...Z"		Fixed-point  
   Body Acceleration signal standard deviation - Z axis   
9. "tGravityAcc.mean...X" 	Fixed-point  
   Gravity Acceleration signal mean - X axis  
10. "tGravityAcc.mean...Y"	Fixed-point  
   Gravity Acceleration signal mean - Y axis  
11. "tGravityAcc.mean...Z" 	Fixed-point  
   Gravity Acceleration signal mean - Z axis  
12. "tGravityAcc.std...X" 	Fixed-point  
   Gravity Acceleration signal standard deviation - X axis  
13. "tGravityAcc.std...Y" 	Fixed-point  
   Gravity Acceleration signal standard deviation - Y axis  
14. "tGravityAcc.std...Z" 	Fixed-point  
   Gravity Acceleration signal standard deviation - Z axis  
15. "tBodyAccJerk.mean...X" 	Fixed-point  
   Gravity Acceleration Jerk signal mean - X axis  
16. "tBodyAccJerk.mean...Y" 	Fixed-point  
   Gravity Acceleration Jerk signal mean - X axis  
17. "tBodyAccJerk.mean...Z" 	Fixed-point  
   Gravity Acceleration Jerk signal mean - X axis  
18. "tBodyAccJerk.std...X" 	Fixed-point  
   Gravity Acceleration Jerk signal standard deviation - X axis  
19. "tBodyAccJerk.std...Y" 	Fixed-point  
   Gravity Acceleration Jerk signal standard deviation - Y axis  
20. "tBodyAccJerk.std...Z" 	Fixed-point  
   Gravity Acceleration Jerk signal  - Z axis  
21. "tBodyGyro.mean...X" 	Fixed-point  
   Body Gyroscope signal mean - X axis  
22. "tBodyGyro.mean...Y" 	Fixed-point  
   Body Gyroscope signal mean - Y axis  
23. "tBodyGyro.mean...Z" 	Fixed-point  
   Body Gyroscope signal mean - Z axis  
24. "tBodyGyro.std...X" 		Fixed-point  
   Body Gyroscope signal standard deviation - X axis  
25. "tBodyGyro.std...Y" 		Fixed-point  
   Body Gyroscope signal standard deviation - Y axis  
26. "tBodyGyro.std...Z" 		Fixed-point  
   Body Gyroscope signal standard deviation - Z axis  
27. "tBodyGyroJerk.mean...X" 	Fixed-point  
   Body Gyroscope Jerk signal mean - X axis  
28. "tBodyGyroJerk.mean...Y" 	Fixed-point  
   Body Gyroscope Jerk signal mean - Y axis  
29. "tBodyGyroJerk.mean...Z"	Fixed-point  
   Body Gyroscope Jerk signal mean - Z axis  
30. "tBodyGyroJerk.std...X" 	Fixed-point  
   Body Gyroscope Jerk signal standard deviation - X axis  
31. "tBodyGyroJerk.std...Y" 	Fixed-point  
   Body Gyroscope Jerk signal standard deviation - Y axis  
32. "tBodyGyroJerk.std...Z" 	Fixed-point  
   Body Gyroscope Jerk signal standard deviation - Z axis  
33. "tBodyAccMag.mean.." 	Fixed-point  
   Body Acceleration signal Magnitude mean  
34. "tBodyAccMag.std.." 		Fixed-point  
   Body Acceleration signal Magnitude standard deviation  
35. "tGravityAccMag.mean.." 	Fixed-point  
   Gravity Acceleration signal Magnitude mean  
36. "tGravityAccMag.std.." 	Fixed-point  
   Gravity Acceleration signal Magnitude standard deviation  
37. "tBodyAccJerkMag.mean.." 	Fixed-point  
   Body Acceleration Jerk signal Magnitude mean  
38. "tBodyAccJerkMag.std.." 	Fixed-point  
   Body Acceleration Jerk signal Magnitude standard deviation  
39. "tBodyGyroMag.mean.." 	Fixed-point  
   Body Gyroscope signal Magnitude mean  
40. "tBodyGyroMag.std.." 	Fixed-point  
   Body Gyroscope signal Magnitude standard deviation  
41. "tBodyGyroJerkMag.mean.." 	Fixed-point  
   Body Gyroscope Jerk signal Magnitude mean  
42. "tBodyGyroJerkMag.std.." 	Fixed-point  
   Body Gyroscope Jerk signal Magnitude standard deviation  
43. "fBodyAcc.mean...X" 		Fixed-point   
    Body Acceleration signal FFT mean - X axis  
44. "fBodyAcc.mean...Y" 		Fixed-point  
    Body Acceleration signal FFT mean - Y axis  
45. "fBodyAcc.mean...Z" 		Fixed-point  
    Body Acceleration signal FFT mean - Z axis  
46. "fBodyAcc.std...X" 		Fixed-point  
   Body Acceleration signal FFT standard deviation - X axis    
47. "fBodyAcc.std...Y" 		Fixed-point  
   Body Acceleration signal FFT standard deviation - Y axis   
48. "fBodyAcc.std...Z" 		Fixed-point  
   Body Acceleration signal FFT standard deviation - Z axis   
49. "fBodyAccJerk.mean...X" 	Fixed-point   
    Body Acceleration Jerk signal FFT mean - X axis   
50. "fBodyAccJerk.mean...Y" 	Fixed-point  
    Body Acceleration Jerk signal FFT mean - Y axis  
51. "fBodyAccJerk.mean...Z" 	Fixed-point  
    Body Acceleration Jerk signal FFT mean - Z axis  
52. "fBodyAccJerk.std...X" 	Fixed-point  
   Body Acceleration Jerk signal FFT standard deviation - X axis  
53. "fBodyAccJerk.std...Y" 	Fixed-point  
   Body Acceleration Jerk signal FFT standard deviation - Y axis  
54. "fBodyAccJerk.std...Z" 	Fixed-point  
   Body Acceleration Jerk signal FFT standard deviation - Z axis  
55. "fBodyGyro.mean...X" 	Fixed-point  
    Body Gyroscope signal FFT mean - X axis  
56. "fBodyGyro.mean...Y" 	Fixed-point  
    Body Gyroscope signal FFT mean - Y axis  
57. "fBodyGyro.mean...Z" 	Fixed-point  
    Body Gyroscope signal FFT mean - Z axis  
58. "fBodyGyro.std...X" 		Fixed-point  
    Body Gyroscope signal FFT standard deviation - X axis  
59. "fBodyGyro.std...Y" 		Fixed-point  
    Body Gyroscope signal FFT standard deviation - Y axis  
60. "fBodyGyro.std...Z" 		Fixed-point  
    Body Gyroscope signal FFT standard deviation - Z axis  
61. "fBodyAccMag.mean.." 	Fixed-point  
    Body Acceleration signal FFT magnitude mean  
62. "fBodyAccMag.std.." 		Fixed-point  
    Body Acceleration signal FFT magnitude standard deviation  
63. "fBodyBodyAccJerkMag.mean.." Fixed-point  
    Body Acceleration Jerk signal FFT magnitude mean
64. "fBodyBodyAccJerkMag.std.." 	Fixed-point  
    Body Acceleration Jerk signal FFT magnitude standard deviation  
65. "fBodyBodyGyroMag.mean.." 	Fixed-point    
    Body Gyroscope signal FFT magnitude mean  
66. "fBodyBodyGyroMag.std.." 	Fixed-point  
    Body Gyroscope signal FFT magnitude standard deviation  
67. "fBodyBodyGyroJerkMag.mean.." Fixed-point  
    Body Gyroscope Jerk signal FFT magnitude mean  
68. "fBodyBodyGyroJerkMag.std.."	Fixed-point  
    Body Gyroscope Jerk signal FFT magnitude standard deviation  
