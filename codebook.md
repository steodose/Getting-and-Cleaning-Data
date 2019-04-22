Project Description
-------------------

Coursera Data Science Specialization Course 3: Getting and Cleaning
Data. The purpose of this project is to demonstrate your ability to
collect, work with, and clean a data set.

One of the most exciting areas in all of data science right now is
wearable computing - see for example this article . Companies like
Fitbit, Nike, and Jawbone Up are racing to develop the most advanced
algorithms to attract new users.

Study design and data processing
--------------------------------

### Collection of the raw data

The data linked to from the course website represent data collected from
the accelerometers from the Samsung Galaxy S smartphone. A full
description is available at the site where the data was obtained:

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Here are the data for the project:

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

### Notes on the original (raw) data

The experiments have been carried out with a group of 30 volunteers
within an age bracket of 19-48 years. Each person performed six
activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING,
STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the
waist. Using its embedded accelerometer and gyroscope, we captured
3-axial linear acceleration and 3-axial angular velocity at a constant
rate of 50Hz. The experiments have been video-recorded to label the data
manually. The obtained dataset has been randomly partitioned into two
sets, where 70% of the volunteers was selected for generating the
training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by
applying noise filters and then sampled in fixed-width sliding windows
of 2.56 sec and 50% overlap (128 readings/window). The sensor
acceleration signal, which has gravitational and body motion components,
was separated using a Butterworth low-pass filter into body acceleration
and gravity. The gravitational force is assumed to have only low
frequency components, therefore a filter with 0.3 Hz cutoff frequency
was used. From each window, a vector of features was obtained by
calculating variables from the time and frequency domain. See
'features\_info.txt' for more details.

For each record it is provided:

-   Triaxial acceleration from the accelerometer (total acceleration)
    and the estimated body acceleration.
-   Triaxial Angular velocity from the gyroscope.
-   A 561-feature vector with time and frequency domain variables.
-   Its activity label.
-   An identifier of the subject who carried out the experiment.

Description of the variables in avg\_data.txt file
--------------------------------------------------

<table style="width:36%;">
<colgroup>
<col width="16%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th>Variable</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>subject</td>
<td>Subject ID</td>
</tr>
<tr class="even">
<td>activity</td>
<td>The activity performed</td>
</tr>
<tr class="odd">
<td>tbodyacc-mean-x</td>
<td>Mean time for acceleration of body for X direction</td>
</tr>
<tr class="even">
<td>tbodyacc-mean-y</td>
<td>Mean time for acceleration of body for Y direction</td>
</tr>
<tr class="odd">
<td>tbodyacc-mean-z</td>
<td>Mean time for acceleration of body for Z direction</td>
</tr>
<tr class="even">
<td>tbodyacc-std-x</td>
<td>Standard deviation of time for acceleration of body for X direction</td>
</tr>
<tr class="odd">
<td>tbodyacc-std-y</td>
<td>Standard deviation of time for acceleration of body for Y direction</td>
</tr>
<tr class="even">
<td>tbodyacc-std-z</td>
<td>Standard deviation of time for acceleration of body for Z direction</td>
</tr>
<tr class="odd">
<td>tgravityacc-mean-x</td>
<td>Mean time of acceleration of gravity for X direction</td>
</tr>
<tr class="even">
<td>tgravityacc-mean-y</td>
<td>Mean time of acceleration of gravity for Y direction</td>
</tr>
<tr class="odd">
<td>tgravityacc-mean-z</td>
<td>Mean time of acceleration of gravity for Z direction</td>
</tr>
<tr class="even">
<td>tgravityacc-std-x</td>
<td>Standard deviation of time of acceleration of gravity for X direction</td>
</tr>
<tr class="odd">
<td>tgravityacc-std-y</td>
<td>Standard deviation of time of acceleration of gravity for Y direction</td>
</tr>
<tr class="even">
<td>tgravityacc-std-z</td>
<td>Standard deviation of time of acceleration of gravity for Z direction</td>
</tr>
<tr class="odd">
<td>tbodyaccjerk-mean-x</td>
<td>Mean time of body acceleration jerk for X direction</td>
</tr>
<tr class="even">
<td>tbodyaccjerk-mean-y</td>
<td>Mean time of body acceleration jerk for Y direction</td>
</tr>
<tr class="odd">
<td>tbodyaccjerk-mean-z</td>
<td>Mean time of body acceleration jerk for Z direction</td>
</tr>
<tr class="even">
<td>tbodyaccjerk-std-x</td>
<td>Standard deviation of time of body acceleration jerk for X direction</td>
</tr>
<tr class="odd">
<td>tbodyaccjerk-std-y</td>
<td>Standard deviation of time of body acceleration jerk for Y direction</td>
</tr>
<tr class="even">
<td>tbodyaccjerk-std-z</td>
<td>Standard deviation of time of body acceleration jerk for Z direction</td>
</tr>
<tr class="odd">
<td>tbodygyro-mean-x</td>
<td>Mean body gyroscope measurement for X direction</td>
</tr>
<tr class="even">
<td>tbodygyro-mean-y</td>
<td>Mean body gyroscope measurement for Y direction</td>
</tr>
<tr class="odd">
<td>tbodygyro-mean-z</td>
<td>Mean body gyroscope measurement for Z direction</td>
</tr>
<tr class="even">
<td>tbodygyro-std-x</td>
<td>Standard deviation of body gyroscope measurement for X direction</td>
</tr>
<tr class="odd">
<td>tbodygyro-std-y</td>
<td>Standard deviation of body gyroscope measurement for Y direction</td>
</tr>
<tr class="even">
<td>tbodygyro-std-z</td>
<td>Standard deviation of body gyroscope measurement for Z direction</td>
</tr>
<tr class="odd">
<td>tbodygyrojerk-mean-x</td>
<td>Mean jerk signal of body for X direction</td>
</tr>
<tr class="even">
<td>tbodygyrojerk-mean-y</td>
<td>Mean jerk signal of body for Y direction</td>
</tr>
<tr class="odd">
<td>tbodygyrojerk-mean-z</td>
<td>Mean jerk signal of body for Z direction</td>
</tr>
<tr class="even">
<td>tbodygyrojerk-std-x</td>
<td>Standard deviation of jerk signal of body for X direction</td>
</tr>
<tr class="odd">
<td>tbodygyrojerk-std-y</td>
<td>Standard deviation of jerk signal of body for Y direction</td>
</tr>
<tr class="even">
<td>tbodygyrojerk-std-z</td>
<td>Standard deviation of jerk signal of body for Z direction</td>
</tr>
<tr class="odd">
<td>tbodyaccmag-mean</td>
<td>Mean magnitude of body Acc</td>
</tr>
<tr class="even">
<td>tbodyaccmag-std</td>
<td>Standard deviation of magnitude of body Acc</td>
</tr>
<tr class="odd">
<td>tgravityaccmag-mean</td>
<td>Mean gravity acceleration magnitude</td>
</tr>
<tr class="even">
<td>tgravityaccmag-std</td>
<td>Standard deviation of gravity acceleration magnitude</td>
</tr>
<tr class="odd">
<td>tbodyaccjerkmag-mean</td>
<td>Mean magnitude of body acceleration jerk</td>
</tr>
<tr class="even">
<td>tbodyaccjerkmag-std</td>
<td>Standard deviation of magnitude of body acceleration jerk</td>
</tr>
<tr class="odd">
<td>tbodygyromag-mean</td>
<td>Mean magnitude of body gyroscope measurement</td>
</tr>
<tr class="even">
<td>tbodygyromag-std</td>
<td>Standard deviation of magnitude of body gyroscope measurement</td>
</tr>
<tr class="odd">
<td>tbodygyrojerkmag-mean</td>
<td>Mean magnitude of body body gyroscope jerk measurement</td>
</tr>
<tr class="even">
<td>tbodygyrojerkmag-std</td>
<td>Standard deviation of magnitude of body body gyroscope jerk measurement</td>
</tr>
<tr class="odd">
<td>fbodyacc-mean-x</td>
<td>Mean frequency of body acceleration for X direction</td>
</tr>
<tr class="even">
<td>fbodyacc-mean-y</td>
<td>Mean frequency of body acceleration for Y direction</td>
</tr>
<tr class="odd">
<td>fbodyacc-mean-z</td>
<td>Mean frequency of body acceleration for Z direction</td>
</tr>
<tr class="even">
<td>fbodyacc-std-x</td>
<td>Standard deviation of frequency of body acceleration for X direction</td>
</tr>
<tr class="odd">
<td>fbodyacc-std-y</td>
<td>Standard deviation of frequency of body acceleration for Y direction</td>
</tr>
<tr class="even">
<td>fbodyacc-std-z</td>
<td>Standard deviation of frequency of body acceleration for Z direction</td>
</tr>
<tr class="odd">
<td>fbodyaccjerk-mean-x</td>
<td>Mean frequency of body accerlation jerk for X direction</td>
</tr>
<tr class="even">
<td>fbodyaccjerk-mean-y</td>
<td>Mean frequency of body accerlation jerk for Y direction</td>
</tr>
<tr class="odd">
<td>fbodyaccjerk-mean-z</td>
<td>Mean frequency of body accerlation jerk for Z direction</td>
</tr>
<tr class="even">
<td>fbodyaccjerk-std-x</td>
<td>Standard deviation frequency of body accerlation jerk for X direction</td>
</tr>
<tr class="odd">
<td>fbodyaccjerk-std-y</td>
<td>Standard deviation frequency of body accerlation jerk for Y direction</td>
</tr>
<tr class="even">
<td>fbodyaccjerk-std-z</td>
<td>Standard deviation frequency of body accerlation jerk for Z direction</td>
</tr>
<tr class="odd">
<td>fbodygyro-mean-x</td>
<td>Mean frequency of body gyroscope measurement for X direction</td>
</tr>
<tr class="even">
<td>fbodygyro-mean-y</td>
<td>Mean frequency of body gyroscope measurement for Y direction</td>
</tr>
<tr class="odd">
<td>fbodygyro-mean-z</td>
<td>Mean frequency of body gyroscope measurement for Z direction</td>
</tr>
<tr class="even">
<td>fbodygyro-std-x</td>
<td>Standard deviation frequency of body gyroscope measurement for X direction</td>
</tr>
<tr class="odd">
<td>fbodygyro-std-y</td>
<td>Standard deviation frequency of body gyroscope measurement for Y direction</td>
</tr>
<tr class="even">
<td>fbodygyro-std-z</td>
<td>Standard deviation frequency of body gyroscope measurement for Z direction</td>
</tr>
<tr class="odd">
<td>fbodyaccmag-mean</td>
<td>Mean frequency of body acceleration magnitude</td>
</tr>
<tr class="even">
<td>fbodyaccmag-std</td>
<td>Standard deviation of frequency of body acceleration magnitude</td>
</tr>
<tr class="odd">
<td>fbodybodyaccjerkmag-mean</td>
<td>Mean frequency of body acceleration jerk magnitude</td>
</tr>
<tr class="even">
<td>fbodybodyaccjerkmag-std</td>
<td>Standard deviation of frequency of body acceleration jerk magnitude</td>
</tr>
<tr class="odd">
<td>fbodybodygyromag-mean</td>
<td>Mean frequency of magnitude of body gyroscope measurement</td>
</tr>
<tr class="even">
<td>fbodybodygyromag-std</td>
<td>Standard deviation of frequency of magnitude of body gyroscope measurement</td>
</tr>
<tr class="odd">
<td>fbodybodygyrojerkmag-mean</td>
<td>Mean frequency of magnitude of body gyroscope jerk measurement</td>
</tr>
<tr class="even">
<td>fbodybodygyrojerkmag-std</td>
<td>Standard deviation frequency of magnitude of body gyroscope jerk measurement</td>
</tr>
</tbody>
</table>

### Citation

\[1\] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and
Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a
Multiclass Hardware-Friendly Support Vector Machine. International
Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz,
Spain. Dec 2012
