source("C0001-dataEntry.R")
source("F0001-basic.R")

##Columns for wpai at each time point:178-184,593-599,846-852,1217-1223,1489-1495##

norandom <- which(is.na(data[,3])) ##3rd column is treatment no., exclude subjects without treatment assigment
bldata <- data[-norandom,178:184] ##wpai at baseline
bldrop <- c("3") ##subjects who "drop out"
bldropdata <- bldata[bldrop,]
blobsdata <- bldata[! rownames(bldata) %in% bldrop,] ##partially missing or complete questionaires
##Correct the typos and convert data frame to matrix before imputing data
##blimpdata will be the imputed blobsdata using MICE
##For summary measure, visit http://www.reillyassociates.net/WPAI_Scoring.html and see WPAI:SHP, 4 possible scores

fudata <- data[-norandom,593:599]
fudrop <- c("13","22","33","36","50","56","59","60","69","89","90")
fudropdata <- fudata[fudrop,]
fuobsdata <- fudata[! rownames(fudata) %in% fudrop,]


mo3data <- data[-norandom,846:852]
mo3drop <- c("22","25","35","36","50","56","59","60","61","69","77","83","89","90")
mo3dropdata <- mo3data[mo3drop,]
mo3obsdata <- mo3data[! rownames(mo3data) %in% mo3drop,]


mo6data <- data[-norandom,1217:1223]
mo6drop <- c("5","7","12","13","19","22","25","33","35","36","40","50","56","60","69","70","75","77","83","90","97")
mo6dropdata <- mo6data[mo6drop,]
mo6obsdata <- mo6data[! rownames(mo6data) %in% mo6drop,]


mo12data <- data[-norandom,1489:1495]
mo12drop <- c("2","21","22","32","33","34","35","36","40","41","50","54","59","60","62","66","69","70","77","83","84",
              "89","92")
mo12dropdata <- mo12data[mo12drop,]
mo12obsdata <- mo12data[! rownames(mo12data) %in% mo12drop,]

