---
author: "dutchdatascience"
date: "6/17/2015"
keep_md: yes
output: html_document
---
DATA DICTIONARY 
=================
### variables
The complete list of variables:

####subject
the subject who performed the activity for each window sample.

######    "Its range is from 1 to 30."
              
####label
activity name

######    "WALKING"

######    "WALKING_UPSTAIRS"

######    "WALKING_DOWNSTAIRS"

######    "SITTING"

######    "STANDING"

######    "LAYING"




####tBodyAcc_mean_X   
See below       

####tBodyAcc_mean_Y          
See below

####tBodyAcc_mean_Z          
See below

####tBodyAcc_std_X           
See below

####tBodyAcc_std_Y           
See below

####tBodyAcc_std_Z           
See below

####tGravityAcc_mean_X       
See below

####tGravityAcc_mean_Y       
See below

####tGravityAcc_mean_Z       
See below

####tGravityAcc_std_X        
See below

####tGravityAcc_std_Y        
See below

####tGravityAcc_std_Z        
See below

####tBodyAccJerk_mean_X      
See below

####tBodyAccJerk_mean_Y      
See below

####tBodyAccJerk_mean_Z      
See below

####tBodyAccJerk_std_X       
See below

####tBodyAccJerk_std_Y       
See below

####tBodyAccJerk_std_Z       
See below

####tBodyGyro_mean_X         
See below

####tBodyGyro_mean_Y         
See below

####tBodyGyro_mean_Z         
See below

####tBodyGyro_std_X          
See below

####tBodyGyro_std_Y          
See below

####tBodyGyro_std_Z          
See below

####tBodyGyroJerk_mean_X     
See below

####tBodyGyroJerk_mean_Y     
See below

####tBodyGyroJerk_mean_Z     
See below

####tBodyGyroJerk_std_X      
See below

####tBodyGyroJerk_std_Y      
See below

####tBodyGyroJerk_std_Z      
See below

####tBodyAccMag_mean         
See below

####tBodyAccMag_std          
See below

####tGravityAccMag_mean      
See below

####tGravityAccMag_std       
See below

####tBodyAccJerkMag_mean     
See below

####tBodyAccJerkMag_std      
See below

####tBodyGyroMag_mean        
See below

####tBodyGyroMag_std         
See below

####tBodyGyroJerkMag_mean    
See below

####tBodyGyroJerkMag_std     
See below

####fBodyAcc_mean_X          
See below

####fBodyAcc_mean_Y          
See below

####fBodyAcc_mean_Z          
See below

####fBodyAcc_std_X           
See below

####fBodyAcc_std_Y           
See below

####fBodyAcc_std_Z           
See below

####fBodyAccJerk_mean_X      
See below

####fBodyAccJerk_mean_Y      
See below

####fBodyAccJerk_mean_Z      
See below

####fBodyAccJerk_std_X       
See below

####fBodyAccJerk_std_Y       
See below

####fBodyAccJerk_std_Z       
See below

####fBodyGyro_mean_X         
See below

####fBodyGyro_mean_Y         
See below

####fBodyGyro_mean_Z         
See below

####fBodyGyro_std_X          
See below

####fBodyGyro_std_Y          
See below

####fBodyGyro_std_Z          
See below

####fBodyAccMag_mean         
See below

####fBodyAccMag_std          
See below

####fBodyBodyAccJerkMag_mean 
See below

####fBodyBodyAccJerkMag_std  
See below

####fBodyBodyGyroMag_mean    
See below

####fBodyBodyGyroMag_std     
See below

####fBodyBodyGyroJerkMag_mean
See below

####fBodyBodyGyroJerkMag_std 
See below


### Detailed Explanation
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

#####tBodyAcc-XYZ

#####tGravityAcc-XYZ

#####tBodyAccJerk-XYZ

#####tBodyGyro-XYZ

#####tBodyGyroJerk-XYZ

#####tBodyAccMag

#####tGravityAccMag

#####tBodyAccJerkMag

#####tBodyGyroMag

#####tBodyGyroJerkMag

#####fBodyAcc-XYZ

#####fBodyAccJerk-XYZ

#####fBodyGyro-XYZ

#####fBodyAccMag

#####fBodyAccJerkMag

#####fBodyGyroMag

#####fBodyGyroJerkMag


The set of variables that were estimated from these signals are: 

mean: Mean value

std: Standard deviation


###Aggregation
The dataset contains 30 subjects and 6 activities (labels). All values in the dataset are aggregated over these subjects and activities. For the resulting groups the mean is calculated.