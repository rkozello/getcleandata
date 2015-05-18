# Load data.table library first
library(data.table)
# 'UCI HAR Dataset' must reside in the working directory, unzipped
# Filenames of data to import
X_test <- "UCI HAR Dataset/test/X_test.txt"
X_train <- "UCI HAR Dataset/train/X_train.txt"
# Create descriptive activities columns for test and train
activity_names <- read.table("UCI HAR Dataset/activity_labels.txt", sep=" ", col.names=c("V1", "Activity"))
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
test_act <- merge(y_test, activity_names, sort=F)[2]
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
train_act <- merge(y_train, activity_names, sort=F)[2]
# Read subject numbers from subject_[test|train].txt
subj_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names="Subject")
subj_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names="Subject")
# Read column names from features.txt
features <- read.table("UCI HAR Dataset/features.txt", sep=" ")
# Create vector for column names
columns <- features$V2
rm(features)
# Read files to dataframes
X_test_data <- read.table(X_test, col.names=columns)
X_test_mean_std <-X_test_data[, c(grep("(mean|std)", names(X_test_data)))]
X_train_data <- read.table(X_train, col.names=columns)
X_train_mean_std <-X_train_data[, c(grep("(mean|std)", names(X_train_data)))]
rm(X_test_data, X_train_data)
# Add activities and subject to data
X_test_mean_std <- cbind(X_test_mean_std, test_act, subj_test)
X_train_mean_std <- cbind(X_train_mean_std, train_act, subj_train)
rm(test_act, train_act)
# Merge train and test to one dataset
X_mean_std <- rbind(X_test_mean_std, X_train_mean_std)
rm(X_test_mean_std, X_train_mean_std)
