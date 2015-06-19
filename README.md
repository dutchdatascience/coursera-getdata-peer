# Getting and Cleaning Data - Peer Assessments /Getting and Cleaning Data Course Project

###Files
* README.md
* codebook.md - describes variables
* run_analysis.R - R code tidying the data


###run_analysis.R explained
an R script called run_analysis.R was created that does the following.

1. Merges the training and the test sets to create one data set:
  * reads the data
  * merge: subjects + labels + data


2. Extract only the measurements on the mean and standard deviation for each measurement. 
  * read the features
  * extract the mean and std features
  * extract: subject + label + "mean and std features"


3. Uses descriptive activity names to name the activities in the data set
  * read activity_labels.txt
  * replace labels in data_mean_std with labels from "activity_labels.txt"


4. Appropriately labels the data set with descriptive variable names. 
  * make a list containing feature names
  * remove "()", replace "-" with "_" and replace column names for data_mean_std

5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
  * All values in the dataset are aggregated over the subjects and activities. For the resulting groups the mean is calculated.
  * The data is written to "tidy_data.txt"

###Reading the data
The data can be read as follows:

data  <- read.table("tidy_data.txt", header=T)
