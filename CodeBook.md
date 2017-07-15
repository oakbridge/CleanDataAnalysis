#Clean Data Analysis CodeBook

The script [run_analysis.r](./run_analysis.r) parses and cleans the original data and creates two datasets, _finalData_ and _summarisedData_.The first one contains the Means and Standard deviations for each observation and the second contains the average of those values for each activity and subject.

##Original info about the features:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAcc-XYZ and TimeGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccJerk-XYZ and TimeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccMag, TimeGravityAccMag, TimeBodyAccJerkMag, TimeBodyGyroMag, TimeBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAcc-XYZ, FrequencyBodyAccJerk-XYZ, FrequencyBodyGyro-XYZ, FrequencyBodyAccJerkMag, FrequencyBodyGyroMag, FrequencyBodyGyroJerkMag.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- TimeBodyAcc-XYZ
- TimeGravityAcc-XYZ
- TimeBodyAccJerk-XYZ
- TimeBodyGyro-XYZ
- TimeBodyGyroJerk-XYZ
- TimeBodyAccMag
- TimeGravityAccMag
- TimeBodyAccJerkMag
- TimeBodyGyroMag
- TimeBodyGyroJerkMag
- FrequencyBodyAcc-XYZ
- FrequencyBodyAccJerk-XYZ
- FrequencyBodyGyro-XYZ
- FrequencyBodyAccMag
- FrequencyBodyAccJerkMag
- FrequencyBodyGyroMag
- FrequencyBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- Mean: Mean value
- Std: Standard deviation

The complete list of variables present in the dataframes are the following:

- TimeBodyAcc-Mean-X
- TimeBodyAcc-Mean-Y
- TimeBodyAcc-Mean-Z
- TimeBodyAcc-Std-X
- TimeBodyAcc-Std-Y
- TimeBodyAcc-Std-Z
- TimeGravityAcc-Mean-X
- TimeGravityAcc-Mean-Y
- TimeGravityAcc-Mean-Z
- TimeGravityAcc-Std-X
- TimeGravityAcc-Std-Y
- TimeGravityAcc-Std-Z
- TimeBodyAccJerk-Mean-X
- TimeBodyAccJerk-Mean-Y
- TimeBodyAccJerk-Mean-Z
- TimeBodyAccJerk-Std-X
- TimeBodyAccJerk-Std-Y
- TimeBodyAccJerk-Std-Z
- TimeBodyGyro-Mean-X
- TimeBodyGyro-Mean-Y
- TimeBodyGyro-Mean-Z
- TimeBodyGyro-Std-X
- TimeBodyGyro-Std-Y
- TimeBodyGyro-Std-Z
- TimeBodyGyroJerk-Mean-X
- TimeBodyGyroJerk-Mean-Y
- TimeBodyGyroJerk-Mean-Z
- TimeBodyGyroJerk-Std-X
- TimeBodyGyroJerk-Std-Y
- TimeBodyGyroJerk-Std-Z
- TimeBodyAccMag-Mean
- TimeBodyAccMag-Std
- TimeGravityAccMag-Mean
- TimeGravityAccMag-Std
- TimeBodyAccJerkMag-Mean
- TimeBodyAccJerkMag-Std
- TimeBodyGyroMag-Mean
- TimeBodyGyroMag-Std
- TimeBodyGyroJerkMag-Mean
- TimeBodyGyroJerkMag-Std
- FrequencyBodyAcc-Mean-X
- FrequencyBodyAcc-Mean-Y
- FrequencyBodyAcc-Mean-Z
- FrequencyBodyAcc-Std-X
- FrequencyBodyAcc-Std-Y
- FrequencyBodyAcc-Std-Z
- FrequencyBodyAccJerk-Mean-X
- FrequencyBodyAccJerk-Mean-Y
- FrequencyBodyAccJerk-Mean-Z
- FrequencyBodyAccJerk-Std-X
- FrequencyBodyAccJerk-Std-Y
- FrequencyBodyAccJerk-Std-Z
- FrequencyBodyGyro-Mean-X
- FrequencyBodyGyro-Mean-Y
- FrequencyBodyGyro-Mean-Z
- FrequencyBodyGyro-Std-X
- FrequencyBodyGyro-Std-Y
- FrequencyBodyGyro-Std-Z
- FrequencyBodyAccMag-Mean
- FrequencyBodyAccMag-Std
- FrequencyBodyBodyAccJerkMag-Mean
- FrequencyBodyBodyAccJerkMag-Std
- FrequencyBodyBodyGyroMag-Mean
- FrequencyBodyBodyGyroMag-Std
- FrequencyBodyBodyGyroJerkMag-Mean
- FrequencyBodyBodyGyroJerkMag-Std
- Activity
- Subject

