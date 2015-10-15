Getting and Cleaning Data Codebook
==================================

Original dataset features
-------------------------

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

The features selected for this dataset come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


Tidy Dataset
-------------

The tidy_dataset file contains 68 variables.

subject : the volunteer id (1-30)  
activity_name : the activity label (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

The next 66 variables are a subset of variables from the original dataset.   
Only the variables related to the mean or the standard deviation of the measurements were selected.  
The data were averaged for each activity and each subject to a dataset of 180 rows (30 subjects * 6 activities)  

Here is the list of selected variables :

tBodyAcc-mean()-XYZ          (3 variables) : average of the mean values of the tBodyAcc-XYZ measurement  
tGravityAcc-mean()-XYZ       (3 variables) : average of the mean values of the tGravityAcc-mean()-XYZ measurement  
tBodyAccJerk-mean()-XYZ      (3 variables) : average of the mean values of the tBodyAccJerk-mean()-XYZ measurement  
tBodyGyro-mean()-XYZ         (3 variables) : average of the mean values of the tBodyGyro-mean()-XYZ measurement  
tBodyGyroJerk-mean()-XYZ     (3 variables) : average of the mean values of the tBodyGyroJerk-mean()-XYZ measurement  
tBodyAccMag-mean()                           average of the mean values of the tBodyAccMag-mean() measurement  
tGravityAccMag-mean()                        average of the mean values of the tGravityAccMag-mean() measurement  
tBodyAccJerkMag-mean()                       average of the mean values of the tBodyAccJerkMag-mean() measurement  
tBodyGyroMag-mean()                          average of the mean values of the tBodyGyroMag-mean() measurement  
tBodyGyroJerkMag-mean()                      average of the mean values of the tBodyGyroJerkMag-mean() measurement  
fBodyAcc-mean()-XYZ          (3 variables) : average of the mean values of the fBodyAcc-mean()-XYZ measurement  
fBodyAccJerk-mean()-XYZ      (3 variables) : average of the mean values of the fBodyAccJerk-mean()-XYZ measurement  
fBodyGyro-mean()-XYZ         (3 variables) : average of the mean values of the fBodyGyro-mean()-XYZ measurement  
fBodyAccMag-mean()                           average of the mean values of the fBodyAccMag-mean() measurement  
fBodyBodyAccJerkMag-mean()                   average of the mean values of the fBodyBodyAccJerkMag-mean() measurement  
fBodyBodyGyroMag-mean()                      average of the mean values of the fBodyBodyGyroMag-mean() measurement  
fBodyBodyGyroJerkMag-mean()                  average of the mean values of the fBodyBodyGyroJerkMag-mean() measurement  

tBodyAcc-std()-XYZ           (3 variables) : average of the std values of the tBodyAcc-XYZ measurement  
tGravityAcc-std()-XYZ        (3 variables) : average of the std values of the tGravityAcc-std()-XYZ measurement  
tBodyAccJerk-std()-XYZ       (3 variables) : average of the std values of the tBodyAccJerk-std()-XYZ measurement  
tBodyGyro-std()-XYZ          (3 variables) : average of the std values of the tBodyGyro-std()-XYZ measurement  
tBodyGyroJerk-std()-XYZ      (3 variables) : average of the std values of the tBodyGyroJerk-std()-XYZ measurement  
tBodyAccMag-std()                            average of the std values of the tBodyAccMag-std() measurement  
tGravityAccMag-std()                         average of the std values of the tGravityAccMag-std() measurement  
tBodyAccJerkMag-std()                        average of the std values of the tBodyAccJerkMag-std() measurement  
tBodyGyroMag-std()                           average of the std values of the tBodyGyroMag-std() measurement  
tBodyGyroJerkMag-std()                       average of the std values of the tBodyGyroJerkMag-std() measurement  
fBodyAcc-std()-XYZ           (3 variables) : average of the std values of the fBodyAcc-std()-XYZ measurement  
fBodyAccJerk-std()-XYZ       (3 variables) : average of the std values of the fBodyAccJerk-std()-XYZ measurement  
fBodyGyro-std()-XYZ          (3 variables) : average of the std values of the fBodyGyro-std()-XYZ measurement  
fBodyAccMag-std()                            average of the std values of the fBodyAccMag-std() measurement  
fBodyBodyAccJerkMag-std()                    average of the std values of the fBodyBodyAccJerkMag-std() measurement  
fBodyBodyGyroMag-std()                       average of the std values of the fBodyBodyGyroMag-std() measurement  
fBodyBodyGyroJerkMag-std()                   average of the std values of the fBodyBodyGyroJerkMag-std() measurement  

