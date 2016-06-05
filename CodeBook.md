# CodeBook.md
# Tidy dataset created from the following source data: Human Activity Recognition Using Smartphones Dataset

## Original dataset:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## The original descripton of how data was collected:

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded Acceleration and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (Acceleration and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. " [1]

## The Dataset has been reduced and modified for the purpose of this class assignment.

Description of tidysummary.txt dataset:
======================================

Obersverations represents the mean for each subjectid / activity pair.

* subjectid: An identifier of the subject who carried out the experiment.
* activity: The activity the subject was performing at time of experiement. 
* Observations collected:
  * tbodyaccmeanx: Mean Time Domain Body Acceleration X axis
  * tbodyaccmeany: Mean Time Domain Body Acceleration Y axis
  * tbodyaccmeanz: Mean Time Domain Body Acceleration Z axis
  * tgravityaccmeanx: Mean Time Domain Gravity Acceleration X axis
  * tgravityaccmeany: Mean Time Domain Gravity Acceleration Y axis
  * tgravityaccmeanz: Mean Time Domain Gravity Acceleration Z axis
  * tbodyaccjerkmeanx: Mean Time Domain Body Acceleration Jerk X axis
  * tbodyaccjerkmeany: Mean Time Domain Body Acceleration Jerk Y axis
  * tbodyaccjerkmeanz: Mean Time Domain Body Acceleration Jerk Z axis
  * tbodygyromeanx: Mean Time Domain Body Gyroscope Acceleration X axis
  * tbodygyromeany: Mean Time Domain Body Gyroscope Acceleration Y axis
  * tbodygyromeanz: Mean Time Domain Body Gyroscope Acceleration Z axis
  * tbodygyrojerkmeanx: Mean Time Domain Body Gyroscope Acceleration Jerk X axis
  * tbodygyrojerkmeany: Mean Time Domain Body Gyroscope Acceleration Jerk Y axis
  * tbodygyrojerkmeanz: Mean Time Domain Body Gyroscope Acceleration Jerk Z axis
  * fbodyaccmeanx: Mean Frequency Domain Body Accleration X Axis
  * fbodyaccmeany: Mean Frequency Domain Body Accleration Y Axis
  * fbodyaccmeanz: Mean Frequency Domain Body Accleration Z Axis
  * fbodyaccjerkmeanx: Mean Frequency Domain Body Accleration Jerk X Axis
  * fbodyaccjerkmeany: Mean Frequency Domain Body Accleration Jerk Y Axis
  * fbodyaccjerkmeanz: Mean Frequency Domain Body Accleration Jerk Z Axis
  * fbodygyromeanx: Mean Frequency Domain Gyrocope X Axis
  * fbodygyromeany: Mean Frequency Domain Gyrocope Y Axis
  * fbodygyromeanz: Mean Frequency Domain Gyrocope Z Axis
  * tbodyaccstdx: Standard Deviation Time Domain Body Acceleration X axis
  * tbodyaccstdy: Standard Deviation Time Domain Body Acceleration Y axis
  * tbodyaccstdz: Standard Deviation Time Domain Body Acceleration Z axis
  * tgravityaccstdx: Standard Deviation Time Domain Gravity Acceleration X axis
  * tgravityaccstdy: Standard Deviation Time Domain Gravity Acceleration Y axis
  * tgravityaccstdz: Standard Deviation Time Domain Gravity Acceleration Z axis
  * tbodyaccjerkstdx: Standard Deviation Time Domain Body Acceleration Jerk X axis
  * tbodyaccjerkstdy: Standard Deviation Time Domain Body Acceleration Jerk Y axis
  * tbodyaccjerkstdz: Standard Deviation Time Domain Body Acceleration Jerk Z axis
  * tbodygyrostdx: Standard Deviation Time Domain Body Gyroscope Acceleration X axis
  * tbodygyrostdy: Standard Deviation Time Domain Body Gyroscope Acceleration Y axis
  * tbodygyrostdz: Standard Deviation Time Domain Body Gyroscope Acceleration Z axis
  * tbodygyrojerkstdx: Standard Deviation Time Domain Body Gyroscope Acceleration Jerk X axis
  * tbodygyrojerkstdy: Standard Deviation Time Domain Body Gyroscope Acceleration Jerk X axis
  * tbodygyrojerkstdz: Standard Deviation Time Domain Body Gyroscope Acceleration Jerk X axis
  * fbodyaccstdx: Standard Deviation Frequency Domain Body Accleration X Axis
  * fbodyaccstdy: Standard Deviation Frequency Domain Body Accleration Y Axis
  * fbodyaccstdz: Standard Deviation Frequency Domain Body Accleration Z Axis
  * fbodyaccjerkstdx: Standard Deviation Frequency Domain Body Acclerometer Jerk X Axis
  * fbodyaccjerkstdy: Standard Deviation Frequency Domain Body Acclerometer Jerk X Axis
  * fbodyaccjerkstdz: Standard Deviation Frequency Domain Body Acclerometer Jerk X Axis
  * fbodygyrostdx: Standard Deviation Freuency Domain Body Gyroscope X Axis 
  * fbodygyrostdy: Standard Deviation Freuency Domain Body Gyroscope Y Axis
  * fbodygyrostdz: Standard Deviation Freuency Domain Body Gyroscope Z Axis

The original dataset included the following files:
=========================================
* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

## For the purposes of this assignment the following datasets were ignored:

* All files within the'train/Inertial Signals directory 
* All files within the'train/Inertial Signals directory 

Additional Notes: 
======
- Features are normalized and bounded within [-1,1].

Acknowledgements:
========
The source dataset was provided by:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012