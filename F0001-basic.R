# extractVar: extracting variables and the column number from the list of variables
extractVar <- function(pattern, name = data.label$name, ...) {
  index = grep(pattern, name, ...)
  return(data.frame(no=index, variable = name[index], stringsAsFactors = FALSE))
}

# alpha.ci: getting CI for cronbach's alpha
alpha.ci <- function(x, digits = 2) {
  round(c(x$total$raw_alpha - 1.96 * x$total$ase,                 
          x$total$raw_alpha, 
          x$total$raw_alpha + 1.96 * x$total$ase), digits = digits)
}

# proportion of missing for each variable
varNA <- function(data, digit=3) sapply(data, function(x) mean(is.na(x))) %>% round(digit)

# number of missing items within a questionnaire for a subject
numMisItems <- function(var.table, time = "bl", data, sample = "all") {
  var.index = var.table$variable[var.table$time == time] %>% as.character
  sample.index = if (sample[1] == "all") {1:dim(data)[1]} else {sample}
  tmp <- data[sample.index, var.index]
  no.item.missing <- table(apply(tmp, 1, function(x) sum(is.na(x))))
  no.item.missing <- c(no.item.missing, "Total" = sum(no.item.missing))
  no.item.missing <- rbind(names(no.item.missing), no.item.missing)
  colnames(no.item.missing) <- NULL
  rownames(no.item.missing) = c("Number of missing items", "Number of of subjects")
  return(list(no.items = dim(tmp)[2], no.item.missing = no.item.missing))
}
if (FALSE) {
  numMisItems(var.anger, "bl", data, sample = "all")
  }