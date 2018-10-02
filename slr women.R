fit = lm(weight ~ height, data = women)
summary(fit)# look at Fstatistic P value if < 0.05 then model exist
range(women$height)
(ndata=data.frame(height=c(58.5,60.7)))
(p=predict(fit,newdata = ndata))
cbind(ndata,p)
plot(fit)


