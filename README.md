# Coursera-UCI-HAR
Coursera - Getting and Cleaning Data Course Project - UCI HAR Dataset

##Intro
In this repository is my submission to the Peer Graded Assignment in the 'Getting and Cleaning Data Course Project'.
The goal of this Assignment is to prepeare tidy data that can be used for later analysis.
The script (run_analysis.R) was developed to achive this goal.
Data from the datasoucre
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
which represents data collected from the accelerometers from the Samsung Galaxy S smartphone.
A full description is available at the site where the data was obtained
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Script description
The unziped Data has to be stored in "./UCI HAR Dataset/" based on the R home directory.
Run the scipt in R home directory

The Script (run_analysis.R) does the following:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set.
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject and writes data to file tidy_data_set.txt
