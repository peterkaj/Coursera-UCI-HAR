# Coursera-UCI-HAR
Coursera - Getting and Cleaning Data Course Project - UCI HAR Dataset

##CodeBook

###Datasource

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
####Description of Datasource
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

###Introduction
From the measurement data of the original Datasource only the mean(average) and std(standard deviation) values was taken into account - the rest of the measurement data was dropped.
The average of the remaining mean and standard deviation values, for each activity and subject, is stored in the file tidy_data_set.txt

###Variables
* subject                 ... numeric vector... Identifier of the person
* activity                ... factor vector... describes the persons activity during measurements (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)
* tBodyAcc-mean()-X       ... numeric vector...Average of mean of tBodyAcc-X measurements for each activity and subject 
* tBodyAcc-mean()-Y       ... numeric vector...Average of mean of tBodyAcc-Y measurements for each activity and subject 
* tBodyAcc-mean()-Z       ... numeric vector...Average of mean of tBodyAcc-Z measurements for each activity and subject
* tBodyAcc-std()-X        ... numeric vector...Average of standard deviation of tBodyAcc-x measurements for each activity and subject
* …

(dataset contains of 68 vectors in total, thereof 66 vectors of measurements)

You will find a detailed description of the variables/measurements in features_info.txt in the original data source.
