CodeBook 
=========



## The first dataset

The dataset created from the first part of the question contain the following columns. It is a 10299 x 68 data frame with 68 columns and 102999 rows.


```r
colnames(data)
```

```
##  [1] "subject_ID"                "activity_name"            
##  [3] "tBodyAcc_mean_X"           "tBodyAcc_mean_Y"          
##  [5] "tBodyAcc_mean_Z"           "tGravityAcc_mean_X"       
##  [7] "tGravityAcc_mean_Y"        "tGravityAcc_mean_Z"       
##  [9] "tBodyAccJerk_mean_X"       "tBodyAccJerk_mean_Y"      
## [11] "tBodyAccJerk_mean_Z"       "tBodyGyro_mean_X"         
## [13] "tBodyGyro_mean_Y"          "tBodyGyro_mean_Z"         
## [15] "tBodyGyroJerk_mean_X"      "tBodyGyroJerk_mean_Y"     
## [17] "tBodyGyroJerk_mean_Z"      "tBodyAccMag_mean"         
## [19] "tGravityAccMag_mean"       "tBodyAccJerkMag_mean"     
## [21] "tBodyGyroMag_mean"         "tBodyGyroJerkMag_mean"    
## [23] "fBodyAcc_mean_X"           "fBodyAcc_mean_Y"          
## [25] "fBodyAcc_mean_Z"           "fBodyAccJerk_mean_X"      
## [27] "fBodyAccJerk_mean_Y"       "fBodyAccJerk_mean_Z"      
## [29] "fBodyGyro_mean_X"          "fBodyGyro_mean_Y"         
## [31] "fBodyGyro_mean_Z"          "fBodyAccMag_mean"         
## [33] "fBodyBodyAccJerkMag_mean"  "fBodyBodyGyroMag_mean"    
## [35] "fBodyBodyGyroJerkMag_mean" "tBodyAcc_std_X"           
## [37] "tBodyAcc_std_Y"            "tBodyAcc_std_Z"           
## [39] "tGravityAcc_std_X"         "tGravityAcc_std_Y"        
## [41] "tGravityAcc_std_Z"         "tBodyAccJerk_std_X"       
## [43] "tBodyAccJerk_std_Y"        "tBodyAccJerk_std_Z"       
## [45] "tBodyGyro_std_X"           "tBodyGyro_std_Y"          
## [47] "tBodyGyro_std_Z"           "tBodyGyroJerk_std_X"      
## [49] "tBodyGyroJerk_std_Y"       "tBodyGyroJerk_std_Z"      
## [51] "tBodyAccMag_std"           "tGravityAccMag_std"       
## [53] "tBodyAccJerkMag_std"       "tBodyGyroMag_std"         
## [55] "tBodyGyroJerkMag_std"      "fBodyAcc_std_X"           
## [57] "fBodyAcc_std_Y"            "fBodyAcc_std_Z"           
## [59] "fBodyAccJerk_std_X"        "fBodyAccJerk_std_Y"       
## [61] "fBodyAccJerk_std_Z"        "fBodyGyro_std_X"          
## [63] "fBodyGyro_std_Y"           "fBodyGyro_std_Z"          
## [65] "fBodyAccMag_std"           "fBodyBodyAccJerkMag_std"  
## [67] "fBodyBodyGyroMag_std"      "fBodyBodyGyroJerkMag_std"
```

1. subject_ID: contains the ID of the subject.

2. activity_name: 1 word description of the activity that the subject has performed.

3. column name containing 'mean': The column containing the mean for the measurement.

4. column name containing 'std': The column contaning the standard deviation for the measurement.

The columns which contained meanFreq() were not selected. Only the columns containing the term mean() were selected.

## The second dataset

The dataset created for the final part of the project. It is a tidy dataset with 68 columns and 180 rows.


```r
colnames(new_data)
```

```
##  [1] "subject_ID"                           
##  [2] "activity_ID"                          
##  [3] "tBodyAcc_mean_X_AVERAGE_VAL"          
##  [4] "tBodyAcc_mean_Y_AVERAGE_VAL"          
##  [5] "tBodyAcc_mean_Z_AVERAGE_VAL"          
##  [6] "tGravityAcc_mean_X_AVERAGE_VAL"       
##  [7] "tGravityAcc_mean_Y_AVERAGE_VAL"       
##  [8] "tGravityAcc_mean_Z_AVERAGE_VAL"       
##  [9] "tBodyAccJerk_mean_X_AVERAGE_VAL"      
## [10] "tBodyAccJerk_mean_Y_AVERAGE_VAL"      
## [11] "tBodyAccJerk_mean_Z_AVERAGE_VAL"      
## [12] "tBodyGyro_mean_X_AVERAGE_VAL"         
## [13] "tBodyGyro_mean_Y_AVERAGE_VAL"         
## [14] "tBodyGyro_mean_Z_AVERAGE_VAL"         
## [15] "tBodyGyroJerk_mean_X_AVERAGE_VAL"     
## [16] "tBodyGyroJerk_mean_Y_AVERAGE_VAL"     
## [17] "tBodyGyroJerk_mean_Z_AVERAGE_VAL"     
## [18] "tBodyAccMag_mean_AVERAGE_VAL"         
## [19] "tGravityAccMag_mean_AVERAGE_VAL"      
## [20] "tBodyAccJerkMag_mean_AVERAGE_VAL"     
## [21] "tBodyGyroMag_mean_AVERAGE_VAL"        
## [22] "tBodyGyroJerkMag_mean_AVERAGE_VAL"    
## [23] "fBodyAcc_mean_X_AVERAGE_VAL"          
## [24] "fBodyAcc_mean_Y_AVERAGE_VAL"          
## [25] "fBodyAcc_mean_Z_AVERAGE_VAL"          
## [26] "fBodyAccJerk_mean_X_AVERAGE_VAL"      
## [27] "fBodyAccJerk_mean_Y_AVERAGE_VAL"      
## [28] "fBodyAccJerk_mean_Z_AVERAGE_VAL"      
## [29] "fBodyGyro_mean_X_AVERAGE_VAL"         
## [30] "fBodyGyro_mean_Y_AVERAGE_VAL"         
## [31] "fBodyGyro_mean_Z_AVERAGE_VAL"         
## [32] "fBodyAccMag_mean_AVERAGE_VAL"         
## [33] "fBodyBodyAccJerkMag_mean_AVERAGE_VAL" 
## [34] "fBodyBodyGyroMag_mean_AVERAGE_VAL"    
## [35] "fBodyBodyGyroJerkMag_mean_AVERAGE_VAL"
## [36] "tBodyAcc_std_X_AVERAGE_VAL"           
## [37] "tBodyAcc_std_Y_AVERAGE_VAL"           
## [38] "tBodyAcc_std_Z_AVERAGE_VAL"           
## [39] "tGravityAcc_std_X_AVERAGE_VAL"        
## [40] "tGravityAcc_std_Y_AVERAGE_VAL"        
## [41] "tGravityAcc_std_Z_AVERAGE_VAL"        
## [42] "tBodyAccJerk_std_X_AVERAGE_VAL"       
## [43] "tBodyAccJerk_std_Y_AVERAGE_VAL"       
## [44] "tBodyAccJerk_std_Z_AVERAGE_VAL"       
## [45] "tBodyGyro_std_X_AVERAGE_VAL"          
## [46] "tBodyGyro_std_Y_AVERAGE_VAL"          
## [47] "tBodyGyro_std_Z_AVERAGE_VAL"          
## [48] "tBodyGyroJerk_std_X_AVERAGE_VAL"      
## [49] "tBodyGyroJerk_std_Y_AVERAGE_VAL"      
## [50] "tBodyGyroJerk_std_Z_AVERAGE_VAL"      
## [51] "tBodyAccMag_std_AVERAGE_VAL"          
## [52] "tGravityAccMag_std_AVERAGE_VAL"       
## [53] "tBodyAccJerkMag_std_AVERAGE_VAL"      
## [54] "tBodyGyroMag_std_AVERAGE_VAL"         
## [55] "tBodyGyroJerkMag_std_AVERAGE_VAL"     
## [56] "fBodyAcc_std_X_AVERAGE_VAL"           
## [57] "fBodyAcc_std_Y_AVERAGE_VAL"           
## [58] "fBodyAcc_std_Z_AVERAGE_VAL"           
## [59] "fBodyAccJerk_std_X_AVERAGE_VAL"       
## [60] "fBodyAccJerk_std_Y_AVERAGE_VAL"       
## [61] "fBodyAccJerk_std_Z_AVERAGE_VAL"       
## [62] "fBodyGyro_std_X_AVERAGE_VAL"          
## [63] "fBodyGyro_std_Y_AVERAGE_VAL"          
## [64] "fBodyGyro_std_Z_AVERAGE_VAL"          
## [65] "fBodyAccMag_std_AVERAGE_VAL"          
## [66] "fBodyBodyAccJerkMag_std_AVERAGE_VAL"  
## [67] "fBodyBodyGyroMag_std_AVERAGE_VAL"     
## [68] "fBodyBodyGyroJerkMag_std_AVERAGE_VAL"
```

1. subject_ID: contains the ID of the subject.

2. activity_name: 1 word description of the activity that the subject has performed.

3. column name containing 'mean': The column containing the mean for the measurement.

4. column name containing 'std': The column contaning the standard deviation for the measurement.

All the columns contain the average value of the measurement, for each subject and each activity.
