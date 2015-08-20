Codebook describing variables in tidy dataset uploaded to Coursera for Getting and Cleaning Data Course Project
=====
by Jikke Romijn, August 20, 2015
=====
Summary of the contents of this dataset (taken from the features.txt file that is part of the raw dataset):

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

====
The tidy dataset produced by the run_analysis.R script contains the following variables:

* "Subject" - a categorical variable between 1-30, corresponding to each of the 30 subject persons who participated in the test.
* "Activity" - a categorical variable stating the activity the subject person was doing when the measurements were taken values: 
	* Laying
	* Sitting
	* Standing
	* Walking
	* Walking Downstairs
	* Walking Upstairs

The next 66 variables contain the means and standard deviations for 33 different measurements that were performed on the subject persons. The variable names consist of the 't' for time or the 'f' for frequency, followed by
* BodyAcc
* GravityAcc
* BodyAccJerk
* BodyGyro
* BodyGyroJerk
* BodyAccMag
* GravityAccMag
* BodyAccJerkMag
* BodyGyroMag
* BodyGyroJerkMag
* BodyBodyAccJerkMag
* BodyBodyGyroMag
* BodyBodyGyroJerkMag

indicating various measurements derived from various signals in the experiments.
These are subsequently followed by mean() or by std() for the mean and standard deviation of the total number of measurements in the original dataset for the subject and activity concerned.
Finally, many measurements are triaxial and thus have three variables, for the x-axis, the y-axis and the z-axis respectively.

====
This is a listing of all the 66 measurement variables in the tidy dataset. The first column shows their position in the tidy dataset. The second column shows their original position in the raw dataset

* 1	1	tBodyAcc-meanX
* 2	2	tBodyAcc-meanY
* 3	3	tBodyAcc-meanZ
* 4	4	tBodyAcc-stdX
* 5	5	tBodyAcc-stdY
* 6	6	tBodyAcc-stdZ
* 7	41	tGravityAcc-meanX
* 8	42	tGravityAcc-meanY
* 9	43	tGravityAcc-meanZ
* 10	44	tGravityAcc-stdX
* 11	45	tGravityAcc-stdY
* 12	46	tGravityAcc-stdZ
* 13	81	tBodyAccJerk-meanX
* 14	82	tBodyAccJerk-meanY
* 15	83	tBodyAccJerk-meanZ
* 16	84	tBodyAccJerk-stdX
* 17	85	tBodyAccJerk-stdY
* 18	86	tBodyAccJerk-stdZ
* 19	121	tBodyGyro-meanX
* 20	122	tBodyGyro-meanY
* 21	123	tBodyGyro-meanZ
* 22	124	tBodyGyro-stdX
* 23	125	tBodyGyro-stdY
* 24	126	tBodyGyro-stdZ
* 25	161	tBodyGyroJerk-meanX
* 26	162	tBodyGyroJerk-meanY
* 27	163	tBodyGyroJerk-meanZ
* 28	164	tBodyGyroJerk-stdX
* 29	165	tBodyGyroJerk-stdY
* 30	166	tBodyGyroJerk-stdZ
* 31	201	tBodyAccMag-mean
* 32	202	tBodyAccMag-std
* 33	214	tGravityAccMag-mean
* 34	215	tGravityAccMag-std
* 35	227	tBodyAccJerkMag-mean
* 36	228	tBodyAccJerkMag-std
* 37	240	tBodyGyroMag-mean
* 38	241	tBodyGyroMag-std
* 39	253	tBodyGyroJerkMag-mean
* 40	254	tBodyGyroJerkMag-std
* 41	266	fBodyAcc-meanX
* 42	267	fBodyAcc-meanY
* 43	268	fBodyAcc-meanZ
* 44	269	fBodyAcc-stdX
* 45	270	fBodyAcc-stdY
* 46	271	fBodyAcc-stdZ
* 47	345	fBodyAccJerk-meanX
* 48	346	fBodyAccJerk-meanY
* 49	347	fBodyAccJerk-meanZ
* 50	348	fBodyAccJerk-stdX
* 51	349	fBodyAccJerk-stdY
* 52	350	fBodyAccJerk-stdZ
* 53	424	fBodyGyro-meanX
* 54	425	fBodyGyro-meanY
* 55	426	fBodyGyro-meanZ
* 56	427	fBodyGyro-stdX
* 57	428	fBodyGyro-stdY
* 58	429	fBodyGyro-stdZ
* 59	503	fBodyAccMag-mean
* 60	504	fBodyAccMag-std
* 61	516	fBodyBodyAccJerkMag-mean
* 62	517	fBodyBodyAccJerkMag-std
* 63	529	fBodyBodyGyroMag-mean
* 64	530	fBodyBodyGyroMag-std
* 65	542	fBodyBodyGyroJerkMag-mean
* 66	543	fBodyBodyGyroJerkMag-std
