The final tidy table contains 68 variables with 40 observations.

The first two column of the table show the Subject and Activities being measured.

The remaining 66 columns contain the average of each of the following measurements

```
 [3] "Avg-tBodyAcc.mean...X"           "Avg-tBodyAcc.mean...Y"          
 [5] "Avg-tBodyAcc.mean...Z"           "Avg-tBodyAcc.std...X"           
 [7] "Avg-tBodyAcc.std...Y"            "Avg-tBodyAcc.std...Z"           
 [9] "Avg-tGravityAcc.mean...X"        "Avg-tGravityAcc.mean...Y"       
[11] "Avg-tGravityAcc.mean...Z"        "Avg-tGravityAcc.std...X"        
[13] "Avg-tGravityAcc.std...Y"         "Avg-tGravityAcc.std...Z"        
[15] "Avg-tBodyAccJerk.mean...X"       "Avg-tBodyAccJerk.mean...Y"      
[17] "Avg-tBodyAccJerk.mean...Z"       "Avg-tBodyAccJerk.std...X"       
[19] "Avg-tBodyAccJerk.std...Y"        "Avg-tBodyAccJerk.std...Z"       
[21] "Avg-tBodyGyro.mean...X"          "Avg-tBodyGyro.mean...Y"         
[23] "Avg-tBodyGyro.mean...Z"          "Avg-tBodyGyro.std...X"          
[25] "Avg-tBodyGyro.std...Y"           "Avg-tBodyGyro.std...Z"          
[27] "Avg-tBodyGyroJerk.mean...X"      "Avg-tBodyGyroJerk.mean...Y"     
[29] "Avg-tBodyGyroJerk.mean...Z"      "Avg-tBodyGyroJerk.std...X"      
[31] "Avg-tBodyGyroJerk.std...Y"       "Avg-tBodyGyroJerk.std...Z"      
[33] "Avg-tBodyAccMag.mean.."          "Avg-tBodyAccMag.std.."          
[35] "Avg-tGravityAccMag.mean.."       "Avg-tGravityAccMag.std.."       
[37] "Avg-tBodyAccJerkMag.mean.."      "Avg-tBodyAccJerkMag.std.."      
[39] "Avg-tBodyGyroMag.mean.."         "Avg-tBodyGyroMag.std.."         
[41] "Avg-tBodyGyroJerkMag.mean.."     "Avg-tBodyGyroJerkMag.std.."     
[43] "Avg-fBodyAcc.mean...X"           "Avg-fBodyAcc.mean...Y"          
[45] "Avg-fBodyAcc.mean...Z"           "Avg-fBodyAcc.std...X"           
[47] "Avg-fBodyAcc.std...Y"            "Avg-fBodyAcc.std...Z"           
[49] "Avg-fBodyAccJerk.mean...X"       "Avg-fBodyAccJerk.mean...Y"      
[51] "Avg-fBodyAccJerk.mean...Z"       "Avg-fBodyAccJerk.std...X"       
[53] "Avg-fBodyAccJerk.std...Y"        "Avg-fBodyAccJerk.std...Z"       
[55] "Avg-fBodyGyro.mean...X"          "Avg-fBodyGyro.mean...Y"         
[57] "Avg-fBodyGyro.mean...Z"          "Avg-fBodyGyro.std...X"          
[59] "Avg-fBodyGyro.std...Y"           "Avg-fBodyGyro.std...Z"          
[61] "Avg-fBodyAccMag.mean.."          "Avg-fBodyAccMag.std.."          
[63] "Avg-fBodyBodyAccJerkMag.mean.."  "Avg-fBodyBodyAccJerkMag.std.."  
[65] "Avg-fBodyBodyGyroMag.mean.."     "Avg-fBodyBodyGyroMag.std.."     
[67] "Avg-fBodyBodyGyroJerkMag.mean.." "Avg-fBodyBodyGyroJerkMag.std.." 
```
Each of the measurement labels contain the following parts:
```
"Avg-": indicates these are average measurements
"t" or "f": Time domain signal or Fast Fourier Transform applied signal
"XXXX.": descriptive names of the measurements.
  BodyAcc = Body Accleration
  GravityAcc = Gravity Accleration
  BodyAccJerk = Body Accleration Jerk signals
  BodyGyro = Body Gyro measurement
  BodyGyroJerk = Body Gyro Jerk measurement
  BodyAccMag = Magnitude of Body Accleration
  GravityAccMag = Magnitude of Gravity Accleration
  BodyAccJerkMag = Magnitude of Body Accleration Jerk signals
  BodyGyroMag = Magnitude of Body Gyro measurement
  BodyGyroJerkMag = Magnitude of Body Gyro Jerk measurement
"mean.." or "std..": Indicate either mean or Stadnard Deviation calculation
".X", ".Y", or ".Z": Indicate the Axis being measured
```
