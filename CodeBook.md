# Getting and Cleaning Data Project Code Book

##Study Design

See the *README.md* file for more on this project and comments within the *run_analyis.R.* file in this repo for more on this study and specifics on data configuration. 

##Code Book of Variables

### Subject

Thirty subjects participated in the study.  Data in this column is an id of the subject.

### Activity

Data were computed across six different activity types performed by subjects.

1. Laying
2. Sitting
3. Standing
4. Walking
5. Walking Downstairs
6. Walking Upstairs

### Feature Means

The run_analysis.R script takes the features listed and described below and takes their mean values across the combination of Subject and Activity factors.  Each of the features below have values for a mean and a standard deviation.  The R script computes a mean of both the mean and standard deviation for each.  The final tidy.txt file produced has a set of 66 feature derivations in which the means were computed.  A full list of these feature calculation variations as named in the tidy dataset can be see in the **All Feature Variables by Type** below.

#### Time Features

Time features are denoted with "Time."  These features are time domain signals.

**XYZ Time Features**

Each of these time features were collected across the X, Y, and Z coorinates.

* TimeBodyAccelerometer
* TimeGravityAccelerometer
* TimeBodyAccelerometerJerk
* TimeBodyGyroscope
* TimeBodyGyroscopeJerk

**Magnitude Time Features**

The magnitude of the three-dimensional time signals (XYZ Time Features) were calculated using the Euclidean norm.

* TimeBodyAccelerometerMagnitude
* TimeGravityAccelerometerMagnitude
* TimeBodyAccelerometerJerkMagnitude
* TimeBodyGyroscopeMagnitude
* TimeBodyGyroscopeJerkMagnitude

#### Frequency Features

Frequency features are denoted with "Frequency."  These features are frequency domain signals.

*XYZ Frequency Features*

Each of these frequency features were collected across the X, Y, and Z coorinates.

* FrequencyBodyAccelerometer
* FrequencyBodyAccelerometerJerk
* FrequencyBodyGyroscope

*Magnitude Frequency Features*

The magnitude of the three-dimensional frequency signals (XYZ Frequency Features) were calculated using the Euclidean norm.

* FrequencyBodyAccelerometerMagnitude
* FrequencyBodyAccelerometerJerkMagnitude
* FrequencyBodyGyroscopeMagnitude
* FrequencyBodyGyroscopeJerkMagnitude

#### All Feature Variables by Type

* TimeBodyAccelerometer  
	  * MeanTimeBodyAccelerometerMeanX
	  * MeanTimeBodyAccelerometerMeanY
	  * MeanTimeBodyAccelerometerMeanZ
	  * MeanTimeBodyAccelerometerStdDevX
	  * MeanTimeBodyAccelerometerStdDevY
	  * MeanTimeBodyAccelerometerStdDevZ
* TimeGravityAccelerometer	
	  * MeanTimeGravityAccelerometerMeanX
	  * MeanTimeGravityAccelerometerMeanY
	  * MeanTimeGravityAccelerometerMeanZ
	  * MeanTimeGravityAccelerometerStdDevX
	  * MeanTimeGravityAccelerometerStdDevY
	  * MeanTimeGravityAccelerometerStdDevZ
* TimeBodyAccelerometerJerk	
	  * MeanTimeBodyAccelerometerJerkMeanX
	  * MeanTimeBodyAccelerometerJerkMeanY
	  * MeanTimeBodyAccelerometerJerkMeanZ
	  * MeanTimeBodyAccelerometerJerkStdDevX
	  * MeanTimeBodyAccelerometerJerkStdDevY
	  * MeanTimeBodyAccelerometerJerkStdDevZ
* TimeBodyGyroscope	
	  * MeanTimeBodyGyroscopeMeanX
	  * MeanTimeBodyGyroscopeMeanY
	  * MeanTimeBodyGyroscopeMeanZ
	  * MeanTimeBodyGyroscopeStdDevX
	  * MeanTimeBodyGyroscopeStdDevY
	  * MeanTimeBodyGyroscopeStdDevZ
* TimeBodyGyroscopeJerk	
	  * MeanTimeBodyGyroscopeJerkMeanX
	  * MeanTimeBodyGyroscopeJerkMeanY
	  * MeanTimeBodyGyroscopeJerkMeanZ
	  * MeanTimeBodyGyroscopeJerkStdDevX
	  * MeanTimeBodyGyroscopeJerkStdDevY
	  * MeanTimeBodyGyroscopeJerkStdDevZ
* TimeBodyAccelerometerMagnitude	
	  * MeanTimeBodyAccelerometerMagnitudeMean
	  * MeanTimeBodyAccelerometerMagnitudeStdDev
* TimeGravityAccelerometerMagnitude	
	  * MeanTimeGravityAccelerometerMagnitudeMean
	  * MeanTimeGravityAccelerometerMagnitudeStdDev
* TimeBodyAccelerometerJerkMagnitude	
	  * MeanTimeBodyAccelerometerJerkMagnitudeMean
	  * MeanTimeBodyAccelerometerJerkMagnitudeStdDev
* TimeBodyGyroscopeMagnitude	
	  * MeanTimeBodyGyroscopeMagnitudeMean
	  * MeanTimeBodyGyroscopeMagnitudeStdDev
* TimeBodyGyroscopeJerkMagnitude	
	  * MeanTimeBodyGyroscopeJerkMagnitudeMean
	  * MeanTimeBodyGyroscopeJerkMagnitudeStdDev
* FrequencyBodyAccelerometer	
	  * MeanFrequencyBodyAccelerometerMeanX
	  * MeanFrequencyBodyAccelerometerMeanY
	  * MeanFrequencyBodyAccelerometerMeanZ
	  * MeanFrequencyBodyAccelerometerStdDevX
	  * MeanFrequencyBodyAccelerometerStdDevY
	  * MeanFrequencyBodyAccelerometerStdDevZ
* FrequencyBodyAccelerometerJerk	
	  * MeanFrequencyBodyAccelerometerJerkMeanX
	  * MeanFrequencyBodyAccelerometerJerkMeanY
	  * MeanFrequencyBodyAccelerometerJerkMeanZ
	  * MeanFrequencyBodyAccelerometerJerkStdDevX
	  * MeanFrequencyBodyAccelerometerJerkStdDevY
	  * MeanFrequencyBodyAccelerometerJerkStdDevZ
* FrequencyBodyGyroscope	
	  * MeanFrequencyBodyGyroscopeMeanX
	  * MeanFrequencyBodyGyroscopeMeanY
	  * MeanFrequencyBodyGyroscopeMeanZ
	  * MeanFrequencyBodyGyroscopeStdDevX
	  * MeanFrequencyBodyGyroscopeStdDevY
	  * MeanFrequencyBodyGyroscopeStdDevZ
* FrequencyBodyAccelerometerMagnitude	
	  * MeanFrequencyBodyAccelerometerMagnitudeMean
	  * MeanFrequencyBodyAccelerometerMagnitudeStdDev
* FrequencyBodyAccelerometerJerkMagnitude	
	  * MeanFrequencyBodyAccelerometerJerkMagnitudeMean
	  * MeanFrequencyBodyAccelerometerJerkMagnitudeStdDev
* FrequencyBodyGyroscopeMagnitude	
	  * MeanFrequencyBodyGyroscopeMagnitudeMean
	  * MeanFrequencyBodyGyroscopeMagnitudeStdDev
* FrequencyBodyGyroscopeJerkMagnitude	
	  * MeanFrequencyBodyGyroscopeJerkMagnitudeMean
	  * MeanFrequencyBodyGyroscopeJerkMagnitudeStdDev
