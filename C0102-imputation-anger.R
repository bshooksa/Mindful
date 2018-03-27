# 0.0 library 
  source("C0001-dataEntry.R")
  source("F0101-variableSet.R")

# 0.1 list of time points and variable categories
  .timePoints
  .categories

# 0.2 variable subsetting examples: "F0101-variableSet.R" required
  if (FALSE) {
    varSet(category="comorbidity", time = "all", covariate = c("base", "demographic", "IBSS"))
    varSet(category="anger", time = c("bl", "fu"), covariate = c("base", "demographic", "IBSS"))
    varSet(category="anger", time = "all", covariate = c("base", "demographic", "IBSS"))
  }
  
# 1.0 imputation - anger
  tmp <- varSet(category="anger", covariate = c("base", "demographic", "IBSS"))
  m <- 30 # number of imputations
  set.seed(100)
  data.anger.imp <- mice(data.working[,tmp$variable], m=m)
  data.anger.list <- lapply(1:m, function(i) complete(data.anger.imp, action = i))
  saveRDS(data.anger.list, "data.anger.list.rds")
  