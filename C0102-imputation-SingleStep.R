source("F0101-variableSet.R")

# list of time points and variable categories
  .timePoints
  .categories

# variable subsetting
  tmp <- varSet(category="comorbidity", time = "all", covariate = c("base", "demographic", "IBSS"))
  tmp <- varSet(category="anger", time = c("bl", "fu"), covariate = c("base", "demographic", "IBSS"))
  tmp <- varSet(category="anger", time = "all", covariate = c("base", "demographic", "IBSS"))
  
mice(data.working[,tmp$variable], m=20)
