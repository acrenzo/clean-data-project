## DATA DICTIONARY - 2016

#### Original Feature Selection 

The original features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, 
fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

*tBodyAcc-XYZ
*tGravityAcc-XYZ
*tBodyAccJerk-XYZ
*tBodyGyro-XYZ
*tBodyGyroJerk-XYZ
*tBodyAccMag
*tGravityAccMag
*tBodyAccJerkMag
*tBodyGyroMag
*tBodyGyroJerkMag
*fBodyAcc-XYZ
*fBodyAccJerk-XYZ
*fBodyGyro-XYZ
*fBodyAccMag
*fBodyAccJerkMag
*fBodyGyroMag
*fBodyGyroJerkMag

The original set of variables that were estimated from these signals are: 

*mean(): Mean value
*std(): Standard deviation
*mad(): Median absolute deviation 
*max(): Largest value in array
*min(): Smallest value in array
*sma(): Signal magnitude area
*energy(): Energy measure. Sum of the squares divided by the number of values. 
*iqr(): Interquartile range 
*entropy(): Signal entropy
*arCoeff(): Autorregresion coefficients with Burg order equal to 4
*correlation(): correlation coefficient between two signals
*maxInds(): index of the frequency component with largest magnitude
*meanFreq(): Weighted average of the frequency components to obtain a mean frequency
*skewness(): skewness of the frequency domain signal 
*kurtosis(): kurtosis of the frequency domain signal 
*bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
*angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

*gravityMean
*tBodyAccMean
*tBodyAccJerkMean
*tBodyGyroMean
*tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

#### New Feature Selection 
The data was filtered to obtained a new data, that show only the average and standar deviation for the "signal stimation" variable, plus the "subject" and the stimated response "y" variables. All elements of the data are numerics. The letter "t" and "f" was changed by "time" and "frecuency" from the original names of the data.

* y : Factor Variable values (1 WALKING, 2 WALKING_UPSTAIRS, 3 WALKING_DOWNSTAIRS, 4 SITTING, 5 STANDING, 6 LAYING)
* subjectData
* timeBodyAcc.mean().X
* timeBodyAcc.mean().Y
* timeBodyAcc.mean().Z
* timeBodyAcc.std().X
* timeBodyAcc.std().Y
* timeBodyAcc.std().Z
* timeGravityAcc.mean().X
* timeGravityAcc.mean().Y
* timeGravityAcc.mean().Z
* timeGravityAcc.std().X
* timeGravityAcc.std().Y
* timeGravityAcc.std().Z
* timeBodyAccJerk.mean().X
* timeBodyAccJerk.mean().Y
* timeBodyAccJerk.mean().Z
* timeBodyAccJerk.std().X
* timeBodyAccJerk.std().Y
* timeBodyAccJerk.std().Z
* timeBodyGyro.mean().X
* timeBodyGyro.mean().Y
* timeBodyGyro.mean().Z
* timeBodyGyro.std().X
* timeBodyGyro.std().Y
* timeBodyGyro.std().Z
* timeBodyGyroJerk.mean().X
* timeBodyGyroJerk.mean().Y
* timeBodyGyroJerk.mean().Z
* timeBodyGyroJerk.std().X
* timeBodyGyroJerk.std().Y
* timeBodyGyroJerk.std().Z
* timeBodyAccMag.mean()
* timeBodyAccMag.std()
* timeGravityAccMag.mean()
* timeGravityAccMag.std()
* timeBodyAccJerkMag.mean()
* timeBodyAccJerkMag.std()
* timeBodyGyroMag.mean()
* timeBodyGyroMag.std()
* timeBodyGyroJerkMag.mean()
* timeBodyGyroJerkMag.std()
* frecuencyBodyAcc.mean().X
* frecuencyBodyAcc.mean().Y
* frecuencyBodyAcc.mean().Z
* frecuencyBodyAcc.std().X
* frecuencyBodyAcc.std().Y
* frecuencyBodyAcc.std().Z
* frecuencyBodyAcc.meanFreq().X
* frecuencyBodyAcc.meanFreq().Y
* frecuencyBodyAcc.meanFreq().Z
* frecuencyBodyAccJerk.mean().X
* frecuencyBodyAccJerk.mean().Y
* frecuencyBodyAccJerk.mean().Z
* frecuencyBodyAccJerk.std().X
* frecuencyBodyAccJerk.std().Y
* frecuencyBodyAccJerk.std().Z
* frecuencyBodyAccJerk.meanFreq().X
* frecuencyBodyAccJerk.meanFreq().Y
* frecuencyBodyAccJerk.meanFreq().Z
* frecuencyBodyGyro.mean().X
* frecuencyBodyGyro.mean().Y
* frecuencyBodyGyro.mean().Z
* frecuencyBodyGyro.std().X
* frecuencyBodyGyro.std().Y
* frecuencyBodyGyro.std().Z
* frecuencyBodyGyro.meanFreq().X
* frecuencyBodyGyro.meanFreq().Y
* frecuencyBodyGyro.meanFreq().Z
* frecuencyBodyAccMag.mean()
* frecuencyBodyAccMag.std()
* frecuencyBodyAccMag.meanFreq()
* frecuencyBodyBodyAccJerkMag.mean()
* frecuencyBodyBodyAccJerkMag.std()
* frecuencyBodyBodyAccJerkMag.meanFreq()
* frecuencyBodyBodyGyroMag.mean()
* frecuencyBodyBodyGyroMag.std()
* frecuencyBodyBodyGyroMag.meanFreq()
* frecuencyBodyBodyGyroJerkMag.mean()
* frecuencyBodyBodyGyroJerkMag.std()
* frecuencyBodyBodyGyroJerkMag.meanFreq()
