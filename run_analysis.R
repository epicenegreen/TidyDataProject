##  run_analysis.R
##  041215 JAJ
##  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
##  1. Merges the training and the test sets to create one data set.
##  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
##  3. Uses descriptive activity names to name the activities in the data set
##  4. Appropriately labels the data set with descriptive variable names. 
##  5. From the data set in step 4, creates a second, independent tidy data set with the 
##      average of each variable for each activity and each subject.
# Install function for packages    
packages<-function(x){
    x<-as.character(match.call()[[2]])
    if (!require(x,character.only=TRUE)) {
        install.packages(pkgs=x,repos="http://cran.r-project.org")
        require(x,character.only=TRUE,quietly=TRUE)
    }
}

packages("RCurl")
packages("plyr")
packages("dplyr")
packages("data.table")

library("RCurl") ## needed for curl method
library("plyr") ## must come before dplyr
library("dplyr") ## must come after plyr
library("data.table") ## needed for data.table class and fread

##  ensure that SSL is possible
if (!"https" %in% curlVersion()$protocols) {
    packages("openssl")
    library("openssl")
    ##  ensure curl-ca-bundle.crt is in path such as C:\Windows\System32\
    CURL_CA_BUNDLE <- ".\\R\\win-library\\3.1\\RCurl\\CurlSSL\\"
    options(CURLOPT_CAPATH = CURL_CA_BUNDLE)
}

reload <- FALSE   ## performance, FALSE to not download data file repeatedly
destZipFile <- ".\\data\\getdata_projectfiles_UCI HAR Dataset.zip"  ## name of local data file
destOutputFile <- ".\\tidy_UCI_HAR_Means_and_SDs.txt"  ## name of local data file
##  Define data file
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

##  Find/create data directory
if (!file.exists("data")) { dir.create("data") }

## Find/load local data file and only download file if reload is TRUE
if ((!file.exists(destZipFile)) || (reload == TRUE)) {
    ##  Note: since URL may be https, and dev of script is on Windows, use curl, problem so use auto
    download.file(url = fileUrl, destfile = destZipFile, method = "auto")
    ##  Save date of download for reference
    dateDownloaded <- date()
    unzip(destZipFile, overwrite=TRUE, exdir="data")
}

featureFile <- ".\\data\\UCI HAR Dataset\\features.txt"
activityFile <- ".\\data\\UCI HAR Dataset\\activity_labels.txt"

DTfeature <- read.table(featureFile, header=FALSE, stringsAsFactors=FALSE, row.names=NULL)
DTactivity <- read.table(activityFile, header=FALSE, stringsAsFactors=FALSE, row.names=NULL, col.names=c("Activity_ID", "Activity"))
DTactivity <- data.table(DTactivity)
setkey(DTactivity,"Activity_ID")

colNames <- c("rn", "Activity_ID", "Subject_ID",  DTfeature[,2], "Type")
## To replace special characters from column names so that make.names done at read.file will not convert them
cleanColNames <- make.names(gsub("\\-", "_", gsub("\\,", "_", gsub("\\)", "", gsub("\\(","", colNames)))))

testFileActivity_ID <- ".\\data\\UCI HAR Dataset\\test\\y_test.txt"
testFileSubject_ID <- ".\\data\\UCI HAR Dataset\\test\\subject_test.txt"
testFileData <- ".\\data\\UCI HAR Dataset\\test\\X_test.txt"

testFiles <- list(testFileActivity_ID, testFileSubject_ID, testFileData)

DFtest <- do.call("cbind", lapply(testFiles, FUN=read.table, header=FALSE, stringsAsFactors=FALSE))
DTtest <- data.table(DFtest, type="test", keep.rownames=TRUE)
setnames(DTtest, cleanColNames)

trainFileActivity_ID <- ".\\data\\UCI HAR Dataset\\train\\y_train.txt"
trainFileSubject_ID <- ".\\data\\UCI HAR Dataset\\train\\subject_train.txt"
trainFileData <- ".\\data\\UCI HAR Dataset\\train\\X_train.txt"

trainFiles <- list(trainFileActivity_ID, trainFileSubject_ID, trainFileData)

DFtrain <- do.call("cbind", lapply(trainFiles, FUN=read.table, header=FALSE, stringsAsFactors=FALSE))
DTtrain <- data.table(DFtrain, type="train", keep.rownames=TRUE)
setnames(DTtrain, cleanColNames)

##  1. Merges the training and the test sets to create one data set.
dlist <- list(DTtest, DTtrain)
## uses rbind to add the train data rows to the end of the test data rows
DTdata <- rbindlist(dlist, use.names=TRUE, fill=TRUE)

setnames(DTdata, cleanColNames)
setkey(DTdata, "Subject_ID") #Subject column

##  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## Gives all of the column names we care about by finding all column names that include the text 'mean' or 'std'
DTdata2 <- DTdata[, c("Activity_ID", "Subject_ID", grep("mean|std", names(DTdata), ignore.case=TRUE, value = TRUE), "Type"), by="Subject_ID", with=FALSE]


##  3. Uses descriptive activity names to name the activities in the data set
##  4. Appropriately labels the data set with descriptive variable names.
## Already has column names since needed for joining and subsetting
setkey(DTactivity,"Activity_ID")

## Create a combination of the DTdata2 table and the activity names from the DTactivity table
DTdata3_4 <- left_join(DTdata2, DTactivity, by="Activity_ID") #to keep all rows in DTdata2


##  5. From the data set in step 4, creates a second, independent tidy data set with the 
##      average of each variable for each activity and each subject.

DTdata5 <- DTdata3_4[,lapply(.SD,mean),by="Activity,Subject_ID",.SDcols=3:88] # returns 180 rows of 88 variables
## Writes the data out to a txt file including a header of column names, but not having row names
write.table(DTdata5, file = destOutputFile, append = FALSE, quote = FALSE, sep = " ",
            eol = "\r", na = "NA", dec = ".", row.names = FALSE,
            col.names = TRUE, qmethod = "escape", fileEncoding = "")
