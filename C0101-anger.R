
# Getting summary measures
data.working

anger.mean <- lapply(anger, function(i) sapply(i, function(j) apply(data.working[ ,j], 1, mean, na.rm=T)))
anger.mean <- do.call(cbind, anger.mean) %>% as.data.frame
names(anger.mean) <- paste0(rep(c("unexp", "extexp", "emoreg", "probsol"), each=5), c(".bl", ".fu", ".3mo", ".6mo", ".12mo"))

which(complete.cases(anger.mean)) # 37 ppl

anger.mean.long <- reshape(anger.mean, 
                            direction = "long", times = c("bl", "fu", "3mo", "6mo", "12mo"), sep=".",
                            v.names = c("unexp", "extexp", "emoreg", "probsol"),
                            varying = names(anger.mean))


anger.mean.diff <- anger.mean[,(0:3)*5 + 2] - anger.mean[,(0:3)*5 + 1]  # fu - bl
names(anger.mean.diff) <- c("unexp", "extexp", "emoreg", "probsol")
anger.mean.diff <- cbind(anger.mean.diff, trt = data.working$treatmgroup_nr)  #1 trt, 2 control

t.test(unexp ~ trt, data=anger.mean.diff)
