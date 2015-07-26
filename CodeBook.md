---
title: "CodeBook"
author: "Amer Malik"
date: "July 25, 2015"
output:
  md_document:
    variant: markdown_github
---


##Description
This codebook contains additional information about the tidy dataset and lists down the definitions and descriptions of each of the variables in it.


### Source Data
A full description of the data used in this project can be found at [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[The source data for this project is on the Course Project page and is linked here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

As per the documentation from the main data source, for the The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).


##Description of the variables in the Output clean dataset file (tidy.txt)

 - Dimensions of the dataset
      180 observations of 68 variables
   

##Description of Each Variable

###[1]	SubjectID:
Subject who performed the activity for each window sample. ID range is from 1 to 30.

 - Class of the variable
   "integer"
 
 - Unique values/levels of the variable
   30 
 
###[2]	Activity:
Label for each of the six activities

 - Class of the variable
   "factor"
 
 - Unique values/levels of the variable
   6
   Levels: LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS
   
###[3]	tBodyAcc.mean.X:
Mean of the Body Acceleration signal on the X-axis for Time domain

 - Class of the variable
   "numeric"
 
 - Unique values/levels of the variable
   Varies

###[4]	tBodyAcc.mean.Y:	
Mean of the Body Acceleration signal on the Y-axis for Time domain

 - Class of the variable
   "numeric"
 
 - Unique values/levels of the variable
   Varies
	
###[5]	tBodyAcc.mean.Z:	
Mean of the Body Acceleration signal on the Z-axis for Time domain

 - Class of the variable
   "numeric"
 
 - Unique values/levels of the variable
   Varies

###[6]	tBodyAcc.std.X:	
Standard Deviation of the Body Acceleration signal on the X-axis for Time domain

 - Class of the variable
   "numeric"
 
 - Unique values/levels of the variable
   Varies

###[7]	tBodyAcc.std.Y:	
Standard Deviation of the Body Acceleration signal on the Y-axis for Time domain

 - Class of the variable
   "numeric"
 
 - Unique values/levels of the variable
   Varies   

###[8]	tBodyAcc.std.Z:	
Standard Deviation of the Body Acceleration signal on the Z-axis for Time domain

 - Class of the variable
   "numeric"
 
 - Unique values/levels of the variable
   Varies
   
###[9]	tGravityAcc.mean.X:	
Mean of Gravitaty Acceleration signal on the X-axis for Time domain

 - Class of the variable
   "numeric"
 
 - Unique values/levels of the variable
   Varies
   
###[10]	tGravityAcc.mean.Y:	
Mean of Gravitaty Acceleration signal on the Y-axis for Time domain

 - Class of the variable
   "numeric"
 
 - Unique values/levels of the variable
   Varies
   
###[11]	tGravityAcc.mean.Z:	
Mean of Gravitaty Acceleration signal on the Z-axis for Time domain

 - Class of the variable
   "numeric"
 
 - Unique values/levels of the variable
   Varies   

###[12]	tGravityAcc.std.X:	
Standard Deviation of Gravity Acceleration on the X-axis for Time domain

 - Class of the variable
   "numeric"
 
 - Unique values/levels of the variable
   Varies	

###[13]	tGravityAcc.std.Y:	
Standard Deviation of Gravity Acceleration on the Y-axis for Time domain

 - Class of the variable
   "numeric"
 
 - Unique values/levels of the variable
   Varies

###[14]	tGravityAcc.std.Z:	
Standard Deviation of Gravity Acceleration on the Z-axis for Time domain

 - Class of the variable
   "numeric"
 
 - Unique values/levels of the variable
   Varies	

###The rest of the variables are as below with their definition. The class of all these variables is "numeric"

[15]	tBodyAccJerk.mean.X:	Mean of the Body Acceleration Jerk signal on the X-axis for Time domain
[16]	tBodyAccJerk.mean.Y:	Mean of the Body Acceleration Jerk signal on the Y-axis for Time domain
[17]	tBodyAccJerk.mean.Z:	Mean of the Body Acceleration Jerk signal on the Z-axis for Time domain
[18]	tBodyAccJerk.std.X:	Standard Deviation of the Body Acceleration Jerk signal on the X-axis for Time domain
[19]	tBodyAccJerk.std.Y:	Standard Deviation of the Body Acceleration Jerk signal on the Y-axis for Time domain
[20]	tBodyAccJerk.std.Z:	Standard Deviation of the Body Acceleration Jerk signal on the Z-axis for Time domain
[21]	tBodyGyro.mean.X:	Mean of the Body Gyroscope signal on the X-axis for Time domain
[22]	tBodyGyro.mean.Y:	Mean of the Body Gyroscope signal on the Y-axis for Time domain
[23]	tBodyGyro.mean.Z:	Mean of the Body Gyroscope signal on the Z-axis for Time domain
[24]	tBodyGyro.std.X:	Standard Deviation of the Body Gyroscope signal on the X-axis for Time domain
[25]	tBodyGyro.std.Y:	Standard Deviation of the Body Gyroscope signal on the Y-axis for Time domain
[26]	tBodyGyro.std.Z:	Standard Deviation of the Body Gyroscope signal on the Z-axis for Time domain
[27]	tBodyGyroJerk.mean.X:	Mean of the Body Gyroscope Jerk signal on the X-axis for Time domain
[28]	tBodyGyroJerk.mean.Y:	Mean of the Body Gyroscope Jerk signal on the Y-axis for Time domain
[29]	tBodyGyroJerk.mean.Z:	Mean of the Body Gyroscope Jerk signal on the Z-axis for Time domain
[30]	tBodyGyroJerk.std.X:	Standard Deviation of the Body Gyroscope Jerk signal on the X-axis for Time domain
[31]	tBodyGyroJerk.std.Y:	Standard Deviation of the Body Gyroscope Jerk signal on the Y-axis for Time domain
[32]	tBodyGyroJerk.std.Z:	Standard Deviation of the Body Gyroscope Jerk signal on the Z-axis for Time domain
[33]	tBodyAccMag.mean.:	Mean of the Body Acceleration Magnitude for Time domain
[34]	tBodyAccMag.std.:	Standard Deviation of the Body Acceleration Magnitude for Time domain
[35]	tGravityAccMag.mean.:	Mean of the Gravity Acceleration Magnitude for Time domain
[36]	tGravityAccMag.std.:	Standard Deviation of the Gravity Acceleration Magnitude for Time domain
[37]	tBodyAccJerkMag.mean.:	Mean of the Body Acceleration Jerk Magnitude for Time domain
[38]	tBodyAccJerkMag.std.:	Standard Deviation of the Body Acceleration Jerk Magnitude for Time domain
[39]	tBodyGyroMag.mean.:	Mean of the Body Gyroscope Magnitude for Time domain
[40]	tBodyGyroMag.std.:	Standard Deviation of the Body Gyroscope Magnitude for Time domain
[41]	tBodyGyroJerkMag.mean.:	Mean of the Body Gyroscope Jerk Magnitude for Time domain
[42]	tBodyGyroJerkMag.std.:	Standard Deviation of the Body Gyroscope Jerk Magnitude for Time domain
[43]	fBodyAcc.mean.X:	Mean of the Body Acceleration signal on the X-axis for Frequency domain
[44]	fBodyAcc.mean.Y:	Mean of the Body Acceleration signal on the Y-axis for Frequency domain
[45]	fBodyAcc.mean.Z:	Mean of the Body Acceleration signal on the Z-axis for Frequency domain
[46]	fBodyAcc.std.X:	Standard Deviation of the Body Acceleration signal on the X-axis for Frequency domain
[47]	fBodyAcc.std.Y:	Standard Deviation of the Body Acceleration signal on the Y-axis for Frequency domain
[48]	fBodyAcc.std.Z:	Standard Deviation of the Body Acceleration signal on the Z-axis for Frequency domain
[49]	fBodyAccJerk.mean.X:	Mean of the Body Acceleration Jerk signal on the X-axis for Frequency domain
[50]	fBodyAccJerk.mean.Y:	Mean of the Body Acceleration Jerk signal on the Y-axis for Frequency domain
[51]	fBodyAccJerk.mean.Z:	Mean of the Body Acceleration Jerk signal on the Z-axis for Frequency domain
[52]	fBodyAccJerk.std.X:	Standard Deviation of the Body Acceleration Jerk signal on the X-axis for Frequency domain
[53]	fBodyAccJerk.std.Y:	Standard Deviation of the Body Acceleration Jerk signal on the Y-axis for Frequency domain
[54]	fBodyAccJerk.std.Z:	Standard Deviation of the Body Acceleration Jerk signal on the Z-axis for Frequency domain
[55]	fBodyGyro.mean.X:	Mean of the Body Gyroscope signal on the X-axis for Frequency domain
[56]	fBodyGyro.mean.Y:	Mean of the Body Gyroscope signal on the Y-axis for Frequency domain
[57]	fBodyGyro.mean.Z:	Mean of the Body Gyroscope signal on the Z-axis for Frequency domain
[58]	fBodyGyro.std.X:	Standard Deviation of the Body Gyroscope signal on the X-axis for Frequency domain
[59]	fBodyGyro.std.Y:	Standard Deviation of the Body Gyroscope signal on the Y-axis for Frequency domain
[60]	fBodyGyro.std.Z:	Standard Deviation of the Body Gyroscope signal on the Z-axis for Frequency domain
[61]	fBodyAccMag.mean.:	Mean of the Body Acceleration Magnitude for Frequency domain
[62]	fBodyAccMag.std.:	Standard Deviation of the Body Acceleration Magnitude for Frequency domain
[63]	fBodyAccJerkMag.mean.:	Mean of the Body Acceleration Jerk Magnitude for Frequency domain
[64]	fBodyAccJerkMag.std.:	Standard Deviation of the Body Acceleration Jerk Magnitude for Frequency domain
[65]	fBodyGyroMag.mean.:	Mean of the Body Gyroscope Magnitude for Frequency domain
[66]	fBodyGyroMag.std.:	Standard Deviation of the Body Gyroscope Magnitude for Frequency domain
[67]	fBodyGyroJerkMag.mean.:	Mean of the Body Gyroscope Jerk Magnitude for Frequency domain
[68]	fBodyGyroJerkMag.std.:	Standard Deviation of the Body Gyroscope Jerk Magnitude for Frequency domain


####Notes on reading the .txt file and packages to load before executing the code

```{r}

library(plyr)
library(dplyr)

read_tidy<-read.table("./courseProject/tidy.txt", header = TRUE)

```

##Sources
Course Discussion Forum
Google
StackExchange
