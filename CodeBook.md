Human Activity Recognition Using Smartphones - Tidy Dataset
==================================================================

The original data set used to produce this tidy data set is from:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


A detailed description of the full data set is available:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data used here were downloaded from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 



The original data set stems from experiments  carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 
3-axial linear acceleration and 3-axial angular velocity were captured. 



Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) 
using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated 
using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are and included in the tidy data set were:

mean(): Mean value
std(): Standard deviation


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean



That is, the original 561-feature vector, was reduced to the list of variables below:


The vARIABLES included are:
----------------------------

 [1] "subjects"                         
 [2] "activity"                         
 [3] "tbodyaccmeanx"                    
 [4] "tbodyaccmeany"                    
 [5] "tbodyaccmeanz"                    
 [6] "tbodyaccstdx"                     
 [7] "tbodyaccstdy"                     
 [8] "tbodyaccstdz"                     
 [9] "tgravityaccmeanx"                 
[10] "tgravityaccmeany"                 
[11] "tgravityaccmeanz"                 
[12] "tgravityaccstdx"                  
[13] "tgravityaccstdy"                  
[14] "tgravityaccstdz"                  
[15] "tbodyaccjerkmeanx"                
[16] "tbodyaccjerkmeany"                
[17] "tbodyaccjerkmeanz"                
[18] "tbodyaccjerkstdx"                 
[19] "tbodyaccjerkstdy"                 
[20] "tbodyaccjerkstdz"                 
[21] "tbodygyromeanx"                   
[22] "tbodygyromeany"                   
[23] "tbodygyromeanz"                   
[24] "tbodygyrostdx"                    
[25] "tbodygyrostdy"                    
[26] "tbodygyrostdz"                    
[27] "tbodygyrojerkmeanx"               
[28] "tbodygyrojerkmeany"               
[29] "tbodygyrojerkmeanz"               
[30] "tbodygyrojerkstdx"                
[31] "tbodygyrojerkstdy"                
[32] "tbodygyrojerkstdz"                
[33] "tbodyaccmagmean"                  
[34] "tbodyaccmagstd"                   
[35] "tgravityaccmagmean"               
[36] "tgravityaccmagstd"                
[37] "tbodyaccjerkmagmean"              
[38] "tbodyaccjerkmagstd"               
[39] "tbodygyromagmean"                 
[40] "tbodygyromagstd"                  
[41] "tbodygyrojerkmagmean"             
[42] "tbodygyrojerkmagstd"              
[43] "fbodyaccmeanx"                    
[44] "fbodyaccmeany"                    
[45] "fbodyaccmeanz"                    
[46] "fbodyaccstdx"                     
[47] "fbodyaccstdy"                     
[48] "fbodyaccstdz"                     
[49] "fbodyaccmeanfreqx"                
[50] "fbodyaccmeanfreqy"                
[51] "fbodyaccmeanfreqz"                
[52] "fbodyaccjerkmeanx"                
[53] "fbodyaccjerkmeany"                
[54] "fbodyaccjerkmeanz"                
[55] "fbodyaccjerkstdx"                 
[56] "fbodyaccjerkstdy"                 
[57] "fbodyaccjerkstdz"                 
[58] "fbodyaccjerkmeanfreqx"            
[59] "fbodyaccjerkmeanfreqy"            
[60] "fbodyaccjerkmeanfreqz"            
[61] "fbodygyromeanx"                   
[62] "fbodygyromeany"                   
[63] "fbodygyromeanz"                   
[64] "fbodygyrostdx"                    
[65] "fbodygyrostdy"                    
[66] "fbodygyrostdz"                    
[67] "fbodygyromeanfreqx"               
[68] "fbodygyromeanfreqy"               
[69] "fbodygyromeanfreqz"               
[70] "fbodyaccmagmean"                  
[71] "fbodyaccmagstd"                   
[72] "fbodyaccmagmeanfreq"              
[73] "fbodyaccjerkmagmean"              
[74] "fbodyaccjerkmagstd"               
[75] "fbodyaccjerkmagmeanfreq"          
[76] "fbodygyromagmean"                 
[77] "fbodygyromagstd"                  
[78] "fbodygyromagmeanfreq"             
[79] "fbodygyrojerkmagmean"             
[80] "fbodygyrojerkmagstd"              
[81] "fbodygyrojerkmagmeanfreq"         
[82] "angletbodyaccmeangravity"         
[83] "angletbodyaccjerkmeangravitymean" 
[84] "angletbodygyromeangravitymean"    
[85] "angletbodygyrojerkmeangravitymean"
[86] "anglexgravitymean"                
[87] "angleygravitymean"                
[88] "anglezgravitymean"  