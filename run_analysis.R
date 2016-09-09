# Data Science Spezialization
# Peer Graded Assignment: Getting and Cleaning data Course Project
# 09.09.2016
# The goal of this Assignment is to prepeare tidy data that can be used for later analysis
# This script (run_analysis.R) was developed to achive this goal
# Datasource  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# The unziped Data has to be stored in "./data/UCI HAR Dataset/" based on the R home directory
#
# This Script does the following:
# 1.Merges the training and the test sets to create one data set.
# 2.Extracts only the measurements on the mean and standard deviation for each measurement.
# 3.Uses descriptive activity names to name the activities in the data set
# 4.Appropriately labels the data set with descriptive variable names.
# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#
library(plyr)
library(reshape2)
#fetch basic data
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", col.names = c("activity_id", "activity"))
features <- read.table("./data/UCI HAR Dataset/features.txt", col.names = c("id", "feature"))

#fetch test data
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt", col.names = "activity_id")

#fetch training data
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt", col.names = "activity_id")

#label the data sets with descriptive variable names
names(x_test) <- features$feature
names(x_train) <- features$feature

#build test and train dataset
test <- cbind(subject = subject_test$subject, y_test, x_test)
train <- cbind(subject = subject_train$subject, y_train, x_train)

#merge test and train data (loose information about whats test and whats training!!!)
uci_har <- rbind(test, train)

#use descriptive activity names
uci_har <- join(uci_har, activity_labels, by="activity_id")

#Extract only 'std' and 'mean' measurements
uci_names <- names(uci_har)
uci_extract <- uci_har[, c("subject", "activity", uci_names[grep("std|mean[(]", uci_names)])]

#independent tidy data set with the average of each variable for each activity and each subject
extract_tidy <- melt(uci_extract, id.vars=c("subject", "activity"))
extract_tidy_mean <- dcast(extract_tidy, subject + activity ~ variable, mean)

#build file
write.table(extract_tidy_mean, "./data/UCI HAR Dataset/tidy_data_set.txt", row.names = FALSE)
