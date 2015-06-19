
# Here are the data for the project: 
#   
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# 
# The code should have a file run_analysis.R in the main directory that can be
# run as long as the Samsung data is in your working directory. The output
# should be the tidy data set you submitted for part 1.
#
# download & unzip
filename <- "getdata-projectfiles-UCI HAR Dataset.zip"
# skip the download step as the file should already be in the working directory
# download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile=filename)
unzip(filename)
setwd("UCI HAR Dataset")

### You should create one R script called run_analysis.R that does the following.
### 1. Merges the training and the test sets to create one data set.

# read the data
test.labels    <- read.table("test/y_test.txt"        , col.names="label")
test.subjects  <- read.table("test/subject_test.txt"  , col.names="subject")
test.data      <- read.table("test/X_test.txt")

train.labels   <- read.table("train/y_train.txt"      , col.names="label")
train.subjects <- read.table("train/subject_train.txt", col.names="subject")
train.data     <- read.table("train/X_train.txt")

# merge: subjects + labels + data
test.all  <- cbind(test.subjects , test.labels , test.data)
train.all <- cbind(train.subjects, train.labels, train.data)
data      <- rbind(test.all, train.all)

### 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

# read the features
features <- read.table("features.txt", stringsAsFactors=FALSE)

# we want only the mean and std features
ptn <- "mean\\(\\)|std\\(\\)"
features_idx <- grep(ptn, features$V2) 
features_mean_std <- features[features_idx,]

# extract: subject + label + selected features
# add 2 because we want to skip subject and label column.
data_mean_std <- data[,c(1,2,features_mean_std$V1+2)]


### 3. Uses descriptive activity names to name the activities in the data set

# read activity_labels.txt
labels <- read.table("activity_labels.txt" )
# replace labels in data_mean_std with labels from "activity_labels.txt"
data_mean_std$label <- labels[data_mean_std$label, 2]

### 4. Appropriately labels the data set with descriptive variable names. 

# make list containing feature names
new_colnames <- c("subject", "label", features_mean_std$V2)

# remove "()", replace "-" with "_" and replace column names for data_mean_std
new_colnames <- gsub("\\(\\)", "", new_colnames)
new_colnames <- gsub("-", "_", new_colnames)
colnames(data_mean_std) <- new_colnames

### 5. From the data set in step 4, creates a second, independent tidy data set
# with the average of each variable for each activity and each subject.

data_agg <- aggregate(data_mean_std[, 3:ncol(data_mean_std)],
                       by=list(subject = data_mean_std$subject,
                               label   = data_mean_std$label),
                       mean)

# Please upload your data set as a txt file created with write.table() using row.name=FALSE
write.table(data_agg, file = "tidy_data.txt", row.name=FALSE)


