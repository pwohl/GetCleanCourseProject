
Human Activity Recognition Using Smartphones - Tidy DatasetCreation
------------------------------------------------------------------------


### To produce the tidy data set, the following data sets were read into R:


- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.



1) 
In a first step the training and the test sets were combined to one data set.

Data files
X_train.txt
X_test.txt.

Using the lables:
y_train.txt
y_test.txt

And column names were added using features.txt

2) 
From this combined data set only the measurements 
on the mean and standard deviation for each measurement were extracted
using the grep function



3)
In the 3rd step descriptive activity names using the names in the activity label file replaced
the numbered activities.



4)
In the 4th step, variable names (column names) were improved
by excluding extra signs such as ",", "()" etc. and changing the
spelling to all lower case.



5)
In the last step a second tidy data set with the average of each variable 
for each activity and each subject was created
and data written out to a text file.

