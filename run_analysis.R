## Download and unzip the project folder 
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, dest = "./courseProject/HAR.zip", mode = "wb")
unzip("./courseProject/HAR.zip", exdir = "./courseProject")


## Load the files into R

##Loading the training dataset 
traindata<-read.table("./courseProject/UCI HAR Dataset/train/X_train.txt", stringsAsFactors = FALSE)

##Loading the training labels
trainvar<-read.table("./courseProject/UCI HAR Dataset/train/y_train.txt", stringsAsFactors = FALSE)

## Assigning the column name to Activity
names(trainvar)<-"Activity"

##Loading the training subjects
trainsub<-read.table("./courseProject/UCI HAR Dataset/train/subject_train.txt", stringsAsFactors = FALSE)

##Assiging the column name to SubjectID
names(trainsub)<-"SubjectID"

## Appending the Subject, Activity column to the training dataset
train<-bind_cols(trainsub,trainvar,traindata)

##Loading the testing dataset
testdata<-read.table("./courseProject/UCI HAR Dataset/test/X_test.txt", stringsAsFactors = FALSE)

##Loading the testing labels
testvar<-read.table("./courseProject/UCI HAR Dataset/test/y_test.txt", stringsAsFactors = FALSE)

## Assigning the column name to Activity
names(testvar)<-"Activity"

##Loading the testing subjects
testsub<-read.table("./courseProject/UCI HAR Dataset/test/subject_test.txt", stringsAsFactors = FALSE)

##Assiging the column name to SubjectID
names(testsub)<-"SubjectID"

## Appending the Subject, Activity column to the training dataset
test<-bind_cols(testsub,testvar,testdata)

##Loading the feature variables
features<-read.table("./courseProject/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)

##Loading the activity labels
activity<-read.table("./courseProject/UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)


## Step 1: Merge the training and the test sets to create one data set
ttmerge<-bind_rows(train,test)

## Remove some of the variables from the environment for less confusion
rm(test, train, testdata, testsub, testvar, traindata, trainsub, trainvar)


## Step 2: Extract only the measurements on the mean and standard deviation for each measurement

## Use the grep function to match the pattern for mean() and std() measurements and create an array of indices
f_sub<-grep("mean\\()|std\\()", features$V2) 

## Subset the merged dataset with the mean() and std() measurements using the index array created in the previous step
## Also subsetting further to get the row with the feature names only
features_subset<-select(features[f_sub,], V2)

## Transposing the dataframe to get a character array of all the names of the measurement variables
features_subset<-t(features_subset)

## Creating two further subsets for easy manipulation of the data 
SubAct<-select(ttmerge, SubjectID, Activity)
woSubAct<-select(ttmerge, -SubjectID, -Activity)

## a. One to remove the SubjectID and Activity columns to match the indices of the created array
tt_meanstd<-select(woSubAct, f_sub)

## Assigning the variable names in the dataset with the names of the feature variables to prepare for Step 4
names(tt_meanstd)<-features_subset[1,]

## b. Using the subset of SubjectID and Activity columns to later use to bind back to main dataset
tt_meanstd<-bind_cols(SubAct,tt_meanstd)


## Step 3: Use descriptive activity names to name the activities in the data set

## Assigning names of the activities from activity_labels.txt to the Activity column for each of the six activities
tt_meanstd[tt_meanstd$Activity == 1,2]<-"WALKING" 
tt_meanstd[tt_meanstd$Activity == 2,2]<-"WALKING_UPSTAIRS"
tt_meanstd[tt_meanstd$Activity == 3,2]<-"WALKING_DOWNSTAIRS" 
tt_meanstd[tt_meanstd$Activity == 4,2]<-"SITTING"
tt_meanstd[tt_meanstd$Activity == 5,2]<-"STANDING" 
tt_meanstd[tt_meanstd$Activity == 6,2]<-"LAYING"


## Step 4: Appropriately labels the data set with descriptive variable names. 

## Using gsub function to match the given pattern, removing all the punctuation characters, double words and
## using . to separate out to words/verbs
names(tt_meanstd)<-gsub("[[:punct:]]", "", names(tt_meanstd))
names(tt_meanstd)<-gsub("BodyBody", "Body", names(tt_meanstd))
names(tt_meanstd)<-gsub("mean", ".mean.", names(tt_meanstd))
names(tt_meanstd)<-gsub("std", ".std.", names(tt_meanstd))


## Step 5: Create an independent tidy data set with the average of each variable for each activity and each subject

## Using th group_by function to group the dataset by Subjects and activities
step5<- group_by(tt_meanstd, SubjectID, Activity)

## Creating the tidy dataset by using the summarise_each function to find average of each of the variables
## with respect to every subject and every activity
tidy<-summarise_each(step5, funs(mean))

## Writing the tidy dataset to a text file 
write.table(tidy, file = "./courseProject/tidy.txt", row.names = FALSE)
