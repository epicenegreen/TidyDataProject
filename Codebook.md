				DATA DICTIONARY - tidy_UCI_HAR_Means_and_SDs.txt
Activity	Physical Activity Description
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING
Subject_ID	Identifier for subject who performed the activity
		Range from 1 to 30
All other variables (features) - 
Acc - Accelerometer
Gyr - Gyroscope
XYZ - used to denote 3-axial signals in the X, Y and Z directions
t - time domain signals captured at a constant rate of 50 Hz filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise
Body, Gravity - acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz
Jerk - body linear acceleration and angular velocity derived in time
Mag - Magnitude of these three-dimensional signals were calculated using the Euclidean norm
f - frequency domain signals generated by applying Fast Fourier Transform (FFT) to signal
mean - Mean value
std - Standard deviation
meanFreq - Weighted average of the frequency components to obtain a mean frequency
angle - Angle between to vectors
gravityMean - averaging the signals of the angle variable

tBodyAcc_mean_X:			tBodyAcc-mean()-X
tBodyAcc_mean_Y:			tBodyAcc-mean()-Y
tBodyAcc_mean_Z:			tBodyAcc-mean()-Z
tBodyAcc_std_X:				tBodyAcc-std()-X
tBodyAcc_std_Y:				tBodyAcc-std()-Y
tBodyAcc_std_Z:				tBodyAcc-std()-Z
tGravityAcc_mean_X:			tGravityAcc-mean()-X
tGravityAcc_mean_Y:			tGravityAcc-mean()-Y
tGravityAcc_mean_Z:			tGravityAcc-mean()-Z
tGravityAcc_std_X:			tGravityAcc-std()-X
tGravityAcc_std_Y:			tGravityAcc-std()-Y
tGravityAcc_std_Z:			tGravityAcc-std()-Z
tBodyAccJerk_mean_X:			tBodyAccJerk-mean()-X
tBodyAccJerk_mean_Y:			tBodyAccJerk-mean()-Y
tBodyAccJerk_mean_Z:			tBodyAccJerk-mean()-Z
tBodyAccJerk_std_X:			tBodyAccJerk-std()-X
tBodyAccJerk_std_Y:			tBodyAccJerk-std()-Y
tBodyAccJerk_std_Z:			tBodyAccJerk-std()-Z
tBodyGyro_mean_X:			tBodyGyro-mean()-X
tBodyGyro_mean_Y:			tBodyGyro-mean()-Y
tBodyGyro_mean_Z:			tBodyGyro-mean()-Z
tBodyGyro_std_X:			tBodyGyro-std()-X
tBodyGyro_std_Y:			tBodyGyro-std()-Y
tBodyGyro_std_Z:			tBodyGyro-std()-Z
tBodyGyroJerk_mean_X:			tBodyGyroJerk-mean()-X
tBodyGyroJerk_mean_Y:			tBodyGyroJerk-mean()-Y
tBodyGyroJerk_mean_Z:			tBodyGyroJerk-mean()-Z
tBodyGyroJerk_std_X:			tBodyGyroJerk-std()-X
tBodyGyroJerk_std_Y:			tBodyGyroJerk-std()-Y
tBodyGyroJerk_std_Z:			tBodyGyroJerk-std()-Z
tBodyAccMag_mean:			tBodyAccMag-mean()
tBodyAccMag_std:			tBodyAccMag-std()
tGravityAccMag_mean:			tGravityAccMag-mean()
tGravityAccMag_std:			tGravityAccMag-std()
tBodyAccJerkMag_mean:			tBodyAccJerkMag-mean()
tBodyAccJerkMag_std:			tBodyAccJerkMag-std()
tBodyGyroMag_mean:			tBodyGyroMag-mean()
tBodyGyroMag_std:			tBodyGyroMag-std()
tBodyGyroJerkMag_mean:			tBodyGyroJerkMag-mean()
tBodyGyroJerkMag_std:			tBodyGyroJerkMag-std()
fBodyAcc_mean_X:			fBodyAcc-mean()-X
fBodyAcc_mean_Y:			fBodyAcc-mean()-Y
fBodyAcc_mean_Z:			fBodyAcc-mean()-Z
fBodyAcc_std_X:				fBodyAcc-std()-X
fBodyAcc_std_Y:				fBodyAcc-std()-Y
fBodyAcc_std_Z:				fBodyAcc-std()-Z
fBodyAcc_meanFreq_X:			fBodyAcc-meanFreq()-X
fBodyAcc_meanFreq_Y:			fBodyAcc-meanFreq()-Y
fBodyAcc_meanFreq_Z:			fBodyAcc-meanFreq()-Z
fBodyAccJerk_mean_X:			fBodyAccJerk-mean()-X
fBodyAccJerk_mean_Y:			fBodyAccJerk-mean()-Y
fBodyAccJerk_mean_Z:			fBodyAccJerk-mean()-Z
fBodyAccJerk_std_X:			fBodyAccJerk-std()-X
fBodyAccJerk_std_Y:			fBodyAccJerk-std()-Y
fBodyAccJerk_std_Z:			fBodyAccJerk-std()-Z
fBodyAccJerk_meanFreq_X:		fBodyAccJerk-meanFreq()-X
fBodyAccJerk_meanFreq_Y:		fBodyAccJerk-meanFreq()-Y
fBodyAccJerk_meanFreq_Z:		fBodyAccJerk-meanFreq()-Z
fBodyGyro_mean_X:			fBodyGyro-mean()-X
fBodyGyro_mean_Y:			fBodyGyro-mean()-Y
fBodyGyro_mean_Z:			fBodyGyro-mean()-Z
fBodyGyro_std_X:			fBodyGyro-std()-X
fBodyGyro_std_Y:			fBodyGyro-std()-Y
fBodyGyro_std_Z:			fBodyGyro-std()-Z
fBodyGyro_meanFreq_X:			fBodyGyro-meanFreq()-X
fBodyGyro_meanFreq_Y:			fBodyGyro-meanFreq()-Y
fBodyGyro_meanFreq_Z:			fBodyGyro-meanFreq()-Z
fBodyAccMag_mean:			fBodyAccMag-mean()
fBodyAccMag_std:			fBodyAccMag-std()
fBodyAccMag_meanFreq:			fBodyAccMag-meanFreq()
fBodyBodyAccJerkMag_mean:		fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag_std:		fBodyBodyAccJerkMag-std()
fBodyBodyAccJerkMag_meanFreq:		fBodyBodyAccJerkMag-meanFreq()
fBodyBodyGyroMag_mean:			fBodyBodyGyroMag-mean()
fBodyBodyGyroMag_std:			fBodyBodyGyroMag-std()
fBodyBodyGyroMag_meanFreq:		fBodyBodyGyroMag-meanFreq()
fBodyBodyGyroJerkMag_mean:		fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag_std:		fBodyBodyGyroJerkMag-std()
fBodyBodyGyroJerkMag_meanFreq:		fBodyBodyGyroJerkMag-meanFreq()
angletBodyAccMean_gravity:		angle(tBodyAccMean,gravity)
angletBodyAccJerkMean_gravityMean:	angle(tBodyAccJerkMean),gravityMean)
angletBodyGyroMean_gravityMean:		angle(tBodyGyroMean,gravityMean)
angletBodyGyroJerkMean_gravityMean:	angle(tBodyGyroJerkMean,gravityMean)
angleX_gravityMean:			angle(X,gravityMean)
angleY_gravityMean:			angle(Y,gravityMean)
angleZ_gravityMean:			angle(Z,gravityMean)

=====================================================================================
Jessica Alana James
Getting and Cleaning Data, Coursera getdata-013
https://github.com/epicenegreen/TidyDataProject.git
derived from features_info.txt -
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws