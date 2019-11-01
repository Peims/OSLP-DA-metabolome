library(ropls)
dataMatrix = read.table("ALL_sample_data.txt",header=T,sep = "\t",row.names = 1)
dataMatrix<- t(dataMatrix)

sampleMetadata=read.table('分组信息',row.names = 1)



data.oplsda = opls(dataMatrix, sampleMetadata[1:6,], predI = 1, orthoI = 1,crossvalI=6)

write.csv(getVipVn(data.oplsda), "VIPscores.csv")