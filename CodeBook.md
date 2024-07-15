# Code Book

## Overview
This code book describes the variables, data transformations, and units of measurement for the tidy data set created from the Human Activity Recognition Using Smartphones Dataset.

## Variables
- `subject`: Integer. Identifier for the subject who performed the activity. Range: 1 to 30.
- `activity`: Character. Descriptive activity name. Possible values:
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING

### Measurement Variables
All measurement variables are normalized and bounded within [-1, 1]. The measurements are the mean and standard deviation of the accelerometer and gyroscope 3-axial raw signals.

#### Time Domain Signals
- `TimeBodyAccelerometerMeanX`: Mean of the time-domain body accelerometer signal along the X axis.
- `TimeBodyAccelerometerMeanY`: Mean of the time-domain body accelerometer signal along the Y axis.
- `TimeBodyAccelerometerMeanZ`: Mean of the time-domain body accelerometer signal along the Z axis.
- `TimeBodyAccelerometerSTDX`: Standard deviation of the time-domain body accelerometer signal along the X axis.
- `TimeBodyAccelerometerSTDY`: Standard deviation of the time-domain body accelerometer signal along the Y axis.
- `TimeBodyAccelerometerSTDZ`: Standard deviation of the time-domain body accelerometer signal along the Z axis.
- `TimeGravityAccelerometerMeanX`: Mean of the time-domain gravity accelerometer signal along the X axis.
- `TimeGravityAccelerometerMeanY`: Mean of the time-domain gravity accelerometer signal along the Y axis.
- `TimeGravityAccelerometerMeanZ`: Mean of the time-domain gravity accelerometer signal along the Z axis.
- `TimeGravityAccelerometerSTDX`: Standard deviation of the time-domain gravity accelerometer signal along the X axis.
- `TimeGravityAccelerometerSTDY`: Standard deviation of the time-domain gravity accelerometer signal along the Y axis.
- `TimeGravityAccelerometerSTDZ`: Standard deviation of the time-domain gravity accelerometer signal along the Z axis.
- `TimeBodyAccelerometerJerkMeanX`: Mean of the time-domain body accelerometer jerk signal along the X axis.
- `TimeBodyAccelerometerJerkMeanY`: Mean of the time-domain body accelerometer jerk signal along the Y axis.
- `TimeBodyAccelerometerJerkMeanZ`: Mean of the time-domain body accelerometer jerk signal along the Z axis.
- `TimeBodyAccelerometerJerkSTDX`: Standard deviation of the time-domain body accelerometer jerk signal along the X axis.
- `TimeBodyAccelerometerJerkSTDY`: Standard deviation of the time-domain body accelerometer jerk signal along the Y axis.
- `TimeBodyAccelerometerJerkSTDZ`: Standard deviation of the time-domain body accelerometer jerk signal along the Z axis.
- `TimeBodyGyroscopeMeanX`: Mean of the time-domain body gyroscope signal along the X axis.
- `TimeBodyGyroscopeMeanY`: Mean of the time-domain body gyroscope signal along the Y axis.
- `TimeBodyGyroscopeMeanZ`: Mean of the time-domain body gyroscope signal along the Z axis.
- `TimeBodyGyroscopeSTDX`: Standard deviation of the time-domain body gyroscope signal along the X axis.
- `TimeBodyGyroscopeSTDY`: Standard deviation of the time-domain body gyroscope signal along the Y axis.
- `TimeBodyGyroscopeSTDZ`: Standard deviation of the time-domain body gyroscope signal along the Z axis.
- `TimeBodyGyroscopeJerkMeanX`: Mean of the time-domain body gyroscope jerk signal along the X axis.
- `TimeBodyGyroscopeJerkMeanY`: Mean of the time-domain body gyroscope jerk signal along the Y axis.
- `TimeBodyGyroscopeJerkMeanZ`: Mean of the time-domain body gyroscope jerk signal along the Z axis.
- `TimeBodyGyroscopeJerkSTDX`: Standard deviation of the time-domain body gyroscope jerk signal along the X axis.
- `TimeBodyGyroscopeJerkSTDY`: Standard deviation of the time-domain body gyroscope jerk signal along the Y axis.
- `TimeBodyGyroscopeJerkSTDZ`: Standard deviation of the time-domain body gyroscope jerk signal along the Z axis.

#### Frequency Domain Signals
- `FrequencyBodyAccelerometerMeanX`: Mean of the frequency-domain body accelerometer signal along the X axis.
- `FrequencyBodyAccelerometerMeanY`: Mean of the frequency-domain body accelerometer signal along the Y axis.
- `FrequencyBodyAccelerometerMeanZ`: Mean of the frequency-domain body accelerometer signal along the Z axis.
- `FrequencyBodyAccelerometerSTDX`: Standard deviation of the frequency-domain body accelerometer signal along the X axis.
- `FrequencyBodyAccelerometerSTDY`: Standard deviation of the frequency-domain body accelerometer signal along the Y axis.
- `FrequencyBodyAccelerometerSTDZ`: Standard deviation of the frequency-domain body accelerometer signal along the Z axis.
- `FrequencyBodyAccelerometerJerkMeanX`: Mean of the frequency-domain body accelerometer jerk signal along the X axis.
- `FrequencyBodyAccelerometerJerkMeanY`: Mean of the frequency-domain body accelerometer jerk signal along the Y axis.
- `FrequencyBodyAccelerometerJerkMeanZ`: Mean of the frequency-domain body accelerometer jerk signal along the Z axis.
- `FrequencyBodyAccelerometerJerkSTDX`: Standard deviation of the frequency-domain body accelerometer jerk signal along the X axis.
- `FrequencyBodyAccelerometerJerkSTDY`: Standard deviation of the frequency-domain body accelerometer jerk signal along the Y axis.
- `FrequencyBodyAccelerometerJerkSTDZ`: Standard deviation of the frequency-domain body accelerometer jerk signal along the Z axis.
- `FrequencyBodyGyroscopeMeanX`: Mean of the frequency-domain body gyroscope signal along the X axis.
- `FrequencyBodyGyroscopeMeanY`: Mean of the frequency-domain body gyroscope signal along the Y axis.
- `FrequencyBodyGyroscopeMeanZ`: Mean of the frequency-domain body gyroscope signal along the Z axis.
- `FrequencyBodyGyroscopeSTDX`: Standard deviation of the frequency-domain body gyroscope signal along the X axis.
- `FrequencyBodyGyroscopeSTDY`: Standard deviation of the frequency-domain body gyroscope signal along the Y axis.
- `FrequencyBodyGyroscopeSTDZ`: Standard deviation of the frequency-domain body gyroscope signal along the Z axis.
- `FrequencyBodyAccelerometerMagnitudeMean`: Mean of the frequency-domain body accelerometer magnitude.
- `FrequencyBodyAccelerometerMagnitudeSTD`: Standard deviation of the frequency-domain body accelerometer magnitude.
- `FrequencyBodyAccelerometerJerkMagnitudeMean`: Mean of the frequency-domain body accelerometer jerk magnitude.
- `FrequencyBodyAccelerometerJerkMagnitudeSTD`: Standard deviation of the frequency-domain body accelerometer jerk magnitude.
- `FrequencyBodyGyroscopeMagnitudeMean`: Mean of the frequency-domain body gyroscope magnitude.
- `FrequencyBodyGyroscopeMagnitudeSTD`: Standard deviation of the frequency-domain body gyroscope magnitude.
- `FrequencyBodyGyroscopeJerkMagnitudeMean`: Mean of the frequency-domain body gyroscope jerk magnitude.
- `FrequencyBodyGyroscopeJerkMagnitudeSTD`: Standard deviation of the frequency-domain body gyroscope jerk magnitude.

## Data Transformations
1. **Merged the training and test sets**: Combined the training and test datasets to create one dataset.
2. **Extracted measurements on the mean and standard deviation**: Selected columns that represent mean and standard deviation measurements.
3. **Used descriptive activity names**: Replaced activity IDs with descriptive activity names.
4. **Labeled the data set with descriptive variable names**:
   - `t` prefix replaced with `Time`
   - `f` prefix replaced with `Frequency`
   - `Acc` replaced with `Accelerometer`
   - `Gyro` replaced with `Gyroscope`
   - `Mag` replaced with `Magnitude`
   - `BodyBody` replaced with `Body`
   - Removed `-mean()`, `-std()`, `-`, `(`, and `)`
5. **Created a second tidy data set with the average of each variable for each activity and each subject**: Aggregated the data by subject and activity, calculating the mean for each variable.
6. **Saved the final tidy data set as `tidy_data.txt` using `write.table()` with `row.name=FALSE`**.

