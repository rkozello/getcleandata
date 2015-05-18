# This is an R script
# test and train folders from 'UCI HAR Dataset' 
# must be moved to R working directory
# Create list of filenames to import
list_test <- file.path("test", "Inertial Signals", list.files("test/Inertial Signals"))
list_train <- file.path("train", "Inertial Signals", list.files("train/Inertial Signals"))
# Read files to fist of dataframes, one for test, one for train
test_all_data <- lapply(list_of_test, read.table)
train_all_data <- lapply(list_of_train, read.table)
