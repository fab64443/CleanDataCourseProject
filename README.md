# run_analysis.R script readme

**Here is a explanation of the analysis done by the R script run_analysis.R**

## Checking if data exists
The run_anylisys.R script first checks if the data file "UCI HAR Dataset.zip" exists in the current directory. If not, the script stops.

## Reading generic datafiles
Then the script reads the activity labels in the activity_labels.txt file and the features in the features.txt file.

## Creating index of mean and standard deviation related features 
The scripts create two vectors from the features dataframe :
 1. an index of the mean related features (33 values)
 2. an index of the std related features (33 values)

## Reading the train data
Then the script read the train data :
 1. the subject ids are read from the train/subject_train.txt file
 2. the data are read from the train/X_train.txt file
 3. the activity ids are read from the train/y_train.txt file 
 
### Set the columns names for train data
The script update the columns names of the X_train dataframe with the names of the variables found in the features dataframe.

### Extact mean and std related variables 
The script extracts the mean and std related variables from the X_train dataframe using the two indexes created before.

### Merging extracted data, subject and activities
After, the script merges the subject variable and activity label variable to the extracted dataframe.

### Doing cleaning job to save memory
The script clean the memory off uneeded dataframe.

## Reading the test data
We repeat the same steps for the test data:

First the script read the test data :
 1. the subject ids are read from the test/subject_test.txt file
 2. the data are read from the test/X_test.txt file
 3. the activity ids are read from the test/y_test.txt file 
 
### Set the columns names for train data
Then the script update the column names of the X_test dataframe with the names of the variables found in the features dataframe.

### Extact mean and std related variables 
The script extracts the mean and std related variables from the X_test dataframe using the two indexes created before.

### Merging extracted data, subject and activities
After, the script merges the subject variable and activity label variable to the extracted dataframe.

### Doing cleaning job to save memory
Then the script clean the memory off uneeded dataframe.

## Merging train and test data
Finally the script concatenate (rbind) the two dataframe in one.

## Adding activity name
Activity names are added as a new variable from the activity_label dataframe. 

## Creating the tidy dataset
The tidy dataset is created as an aggregate by subject and activity_name using the mean() function. The dataset is writed on disk with filename "tidy_dataset.txt" 

 

 