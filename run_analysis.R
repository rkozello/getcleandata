# Load required packages library first
library(data.table)
library(plyr)
# 'UCI HAR Dataset' must reside in the working directory, unzipped

# Create descriptive activities columns for test and train
activity_names <- read.table("UCI HAR Dataset/activity_labels.txt", sep=" ", col.names=c("V1", "Activity"))
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
test_act <- merge(y_test, activity_names, sort=F)[2]
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
train_act <- merge(y_train, activity_names, sort=F)[2]

# Read subject numbers from subject_[test|train].txt
test_subj <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names="Subject")
train_subj <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names="Subject")

# Read column names from features.txt
columns <- (read.table("UCI HAR Dataset/features.txt", sep=" "))$V2

# Read files to dataframe and leave only columns containing '.mean.' and '.std.'
# but not meanFreq
X_test_data <- read.table("UCI HAR Dataset/test/X_test.txt", col.names=columns)
X_test_mean_std <-X_test_data[, c(grep("(\\.mean\\.|\\.std\\.)", names(X_test_data)))]
X_train_data <- read.table("UCI HAR Dataset/train/X_train.txt", col.names=columns)
X_train_mean_std <- X_train_data[, c(grep("(\\.mean\\.|\\.std\\.)", names(X_train_data)))]
rm(X_test_data, X_train_data)

# Add activities and subject to data
X_test_mean_std <- cbind(X_test_mean_std, test_act, test_subj)
X_train_mean_std <- cbind(X_train_mean_std, train_act, train_subj)
rm(test_act, train_act, test_subj, train_subj)

# Merge train and test to one dataset
X_mean_std <- rbind(X_test_mean_std, X_train_mean_std)
rm(X_test_mean_std, X_train_mean_std)

# Calculate mean for each variable for every Activity and Subject
X_average <- ddply(X_mean_std, .(Subject, Activity), numcolwise(mean, na.rm=T))
rm(X_mean_std)
# Write resulting data frame to txt file using write.table()
write.table(X_average, file="course_project_result.txt", row.name=F)
