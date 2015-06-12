# Load required packages library first
library(data.table)
library(plyr)
# 'UCI HAR Dataset' must reside in the working directory, unzipped

# Create descriptive activities dataframe
activity_names <- read.table("UCI HAR Dataset/activity_labels.txt", sep=" ", col.names=c("V1", "Activity"))
# Create dataframe of activity codes (y)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
y<-rbind(y_test, y_train)

# Create dataframe of subjects (subj)
test_subj <-read.table("UCI HAR Dataset/test/subject_test.txt", col.names="Subject", stringsAsFactors=F)
train_subj <-read.table("UCI HAR Dataset/train/subject_train.txt", col.names="Subject", stringsAsFactors=F)
subj <- rbind(test_subj, train_subj)

# Read column names from features.txt (columns)
columns <- (read.table("UCI HAR Dataset/features.txt", sep=" "))$V2

# Read test and train files to single dataframe (X_data) 
# and leave only columns containing '.mean.' and '.std.' (X_mean_std)
X_test_data <- read.table("UCI HAR Dataset/test/X_test.txt", col.names=columns)
X_train_data <- read.table("UCI HAR Dataset/train/X_train.txt", col.names=columns)
X_data <- rbind(X_test_data, X_train_data)
X_mean_std <-X_data[, c(grep("(\\.mean\\.|\\.std\\.)", names(X_data)))]

# Add activities and subject codes to data
X_mean_std <- cbind(y, subj, X_mean_std)
# Add activity names to data
X_mean_std <- merge(activity_names, X_mean_std, sort=F)
# Remove activity codes from resulting data frame
X_mean_std$V1 <- NULL

# Create a function to round results (make them more readable) 
roundmean <- function(x) round(mean(x), 4)
# Calculate mean of each variable for every activity and subject code
X_average <- ddply(X_mean_std, .(Activity, Subject), numcolwise(roundmean))

# Write resulting data frame to txt file using write.table()
write.table(X_average, file="course_project_result.txt", row.name=F)
