#' ---
#' title: Number of missing items within a questionnaire for each subject
#' author: Group H
#' date: March 21, 2018
#' ---

#+ echo=FALSE, warning=FALSE
#varNA(data.working)
source("C0001-dataEntry.R")
source("F0001-basic.R")


#+ warning=FALSE
#' ## anger variables     
# There exist a few moderately missing subjects, and many lightly missing subjects
numMisItems(var.anger, "bl", data, sample = sample.include)
numMisItems(var.anger, "fu", data, sample = sample.include)
numMisItems(var.anger, "3mo", data, sample = sample.include)
numMisItems(var.anger, "6mo", data, sample = sample.include)

#' <br>
#' 
#' ## work productivity variables
# Skip structure, but given a small size of questionnaire, might need multiple imputation.
numMisItems(var.work, "bl", data, sample = sample.include)
numMisItems(var.work, "fu", data, sample = sample.include)
numMisItems(var.work, "3mo", data, sample = sample.include)
numMisItems(var.work, "6mo", data, sample = sample.include)

#' <br>
#' 
#' ## comorbidity variables      
# There exist a few lightly missing subjects
numMisItems(var.comorbid, "bl", data, sample = sample.include)
numMisItems(var.comorbid, "fu", data, sample = sample.include)
numMisItems(var.comorbid, "3mo", data, sample = sample.include)
numMisItems(var.comorbid, "6mo", data, sample = sample.include)

#' <br>
#' 
#' ## FILE variables              
# There exist many moderately missing subjects
numMisItems(var.FILE, "common", data, sample = sample.include)
numMisItems(var.FILE, "common-hist", data, sample = sample.include)

#' <br>
#' 
#' ## coping strategy variables
# There exist a few moderately missing subjects
numMisItems(var.coping, "bl", data, sample = sample.include)
numMisItems(var.coping, "fu", data, sample = sample.include)
numMisItems(var.coping, "3mo", data, sample = sample.include)
numMisItems(var.coping, "6mo", data, sample = sample.include)
