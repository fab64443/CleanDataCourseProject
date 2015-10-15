# 
#  run_analysis.R

# check if datafile exist
if (!file.exists("UCI HAR Dataset.zip")) stop("Data file does not exist")

# Read generic data
cat("Reading generic data...\n")
## Read activity labels
activity_labels = read.table(unz("UCI HAR Dataset.zip","UCI HAR Dataset/activity_labels.txt"))

## Read features
features = read.table(unz("UCI HAR Dataset.zip","UCI HAR Dataset/features.txt"))

## create mean and std columns index
mean_index = grep("-mean\\(\\)",features$V2)
std_index = grep("-std\\(\\)",features$V2)

# Read train data
## Read subject, X and y data
cat("Reading train data...\n")
subject_train = read.table(unz("UCI HAR Dataset.zip","UCI HAR Dataset/train/subject_train.txt"))
X_train = read.table(unz("UCI HAR Dataset.zip","UCI HAR Dataset/train/X_train.txt"))
y_train = read.table(unz("UCI HAR Dataset.zip","UCI HAR Dataset/train/y_train.txt"))

## name the columns
names(X_train) = features$V2

## extract mean and std measurements columns
extract_train = X_train[,c(mean_index,std_index)]
## add subject and activity columns
extract_train$subject = subject_train$V1
extract_train$activity = y_train$V1

# clean memory
remove(list=c("subject_train","X_train","y_train"))

# Read test data
## Read subject, X and y data
cat("Reading test data...\n")
subject_test = read.table(unz("UCI HAR Dataset.zip","UCI HAR Dataset/test/subject_test.txt"))
X_test = read.table(unz("UCI HAR Dataset.zip","UCI HAR Dataset/test/X_test.txt"))
y_test = read.table(unz("UCI HAR Dataset.zip","UCI HAR Dataset/test/y_test.txt"))

## name the columns
names(X_test) = features$V2

## extract mean and std measurements columns
extract_test = X_test[,c(mean_index,std_index)]
## add subject and activity columns
extract_test$subject = subject_test$V1
extract_test$activity = y_test$V1

## clean memory
remove(list=c("subject_test","X_test","y_test"))

# Merge test and train data
cat("Merging test and train data and cleaning memory...\n")
X = rbind(extract_test,extract_train)
remove(list=c("extract_train","extract_test"))

## Add activity names
X$activity_name = activity_labels[X$activity,2]

# Create tidy dataset
nbrvars = length(c(mean_index,std_index))
tidy = aggregate(X[,1:nbrvars],list(subject=X$subject,activity_name=X$activity_name),mean)
cat("Creating tidy dataset...\n")
# save tidy dataset
write.table(tidy,"tidy_dataset.txt",row.names=FALSE)

