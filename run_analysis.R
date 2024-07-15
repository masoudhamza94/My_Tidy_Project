# Load required packages
library(dplyr)

# Download and unzip the dataset from the provided URL
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, "UCI_HAR_Dataset.zip", method = "curl")
unzip("UCI_HAR_Dataset.zip")

# Read the activity labels and features from the dataset
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("activity_id", "activity"))
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("feature_id", "feature"))

# Read training data
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "activity_id")

# Read test data
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "activity_id")

# Combine the training and test datasets for subjects, measurements, and activity IDs
subject_data <- rbind(subject_train, subject_test)
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)

# Assign descriptive column names to x_data using the features information
colnames(x_data) <- features$feature

# Combine subject, activity, and measurement data into one dataset
merged_data <- cbind(subject_data, y_data, x_data)

# Select only the columns that contain mean and standard deviation measurements
mean_std_data <- merged_data %>%
  select(subject, activity_id, contains("mean"), contains("std"))

# Replace activity IDs with descriptive activity names
mean_std_data <- merge(mean_std_data, activity_labels, by = "activity_id")
mean_std_data <- mean_std_data %>%
  select(-activity_id) %>%
  rename(activity = activity)

# Clean up column names to be more descriptive and readable
names(mean_std_data) <- gsub("^t", "Time", names(mean_std_data))
names(mean_std_data) <- gsub("^f", "Frequency", names(mean_std_data))
names(mean_std_data) <- gsub("Acc", "Accelerometer", names(mean_std_data))
names(mean_std_data) <- gsub("Gyro", "Gyroscope", names(mean_std_data))
names(mean_std_data) <- gsub("Mag", "Magnitude", names(mean_std_data))
names(mean_std_data) <- gsub("BodyBody", "Body", names(mean_std_data))
names(mean_std_data) <- gsub("-mean\\(\\)", "Mean", names(mean_std_data), ignore.case = TRUE)
names(mean_std_data) <- gsub("-std\\(\\)", "STD", names(mean_std_data), ignore.case = TRUE)
names(mean_std_data) <- gsub("[-()]", "", names(mean_std_data))

# Create a new dataset with the average of each variable for each activity and each subject
tidy_data <- mean_std_data %>%
  group_by(subject, activity) %>%
  summarise(across(everything(), mean))

# Save the tidy dataset to a text file
write.table(tidy_data, "tidy_data.txt", row.names = FALSE)
