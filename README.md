==================================================================
##Tidy Data Project
###Course Project for *Getting and Cleaning Data* Class
==================================================================

*From the original README.txt file for tbe downloaded data set -*

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

The dataset includes the following files:
==================================================================

- 'README.md': This ReadMe file

- 'Codebook.md': Data Dictionary for the set

- 'run_analysis.r': R script for data interpretation and production of tidy data set

- 'tidy_UCI_HAR_Means_and_SDs.txt': tidy data set, can be read into R with **'read.table(header=TRUE)'**

A tidy data set is produced that contains:
==================================================================

- Means and standard deviations of triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration of combined test and training sets
- Means and standard deviations of triaxial Angular velocity from the gyroscope of combined test and training sets
- An 86-feature vector with time and frequency domain variables. 
- Each applicable activity label. 
- An identifier of the subject who carried out the experiment.

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature is the mean of all observations of that feature for each subject in each activity
- The tidy data set was designed based on the musings seen in https://class.coursera.org/getdata-013/forum/thread?thread_id=30

*Jessica Alana James*

*Getting and Cleaning Data, Coursera getdata-013*

*https://github.com/epicenegreen/TidyDataProject.git*

License:
========
For more information about this dataset contact: activityrecognition@smartlab.ws

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
