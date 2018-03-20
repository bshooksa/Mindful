
#+ echo=FALSE, warning=FALSE
# Proportion of missing values for each variable
#varNA(data.working)
source("C0001-dataEntry.R")
source("F0001-basic.R")


#+ warning=FALSE
### Number of missing items for each subject
# anger variables 
numMisItems(var.anger, "bl", data, sample = sample.include)
numMisItems(var.anger, "fu", data, sample = sample.include)
numMisItems(var.anger, "3mo", data, sample = sample.include)
numMisItems(var.anger, "6mo", data, sample = sample.include)

# work productivity variables 
numMisItems(var.work, "bl", data, sample = sample.include)
numMisItems(var.work, "fu", data, sample = sample.include)
numMisItems(var.work, "3mo", data, sample = sample.include)
numMisItems(var.work, "6mo", data, sample = sample.include)

# comorbidity variables 
numMisItems(var.comorbid, "bl", data, sample = sample.include)
numMisItems(var.comorbid, "fu", data, sample = sample.include)
numMisItems(var.comorbid, "3mo", data, sample = sample.include)
numMisItems(var.comorbid, "6mo", data, sample = sample.include)

# FILE variables 
numMisItems(var.FILE, "common", data, sample = sample.include)
numMisItems(var.FILE, "common-hist", data, sample = sample.include)
