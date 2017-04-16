###################################################
### Loading the Data into R
###################################################
library(DMwR)
setwd("D:/data/")
algae <- read.table('data.txt',
          header=F,
          dec='.',
          col.names=c('surgery','age','hosNum','temperature','pulse','respiratoryrate','temperatureofextremities',
                      'peripheralpulse','mucousmembranes','capillaryrefilltime','pain','peristalsis','abdominaldistension','nasogastrictube',
                      'nasogastricreflux','nasogastricrefluxPH','rectalexamination','abdomen','packedcellvolume','totalprotein','abdominocentesisappearance',
                      'abdomcentesistotalprotein','outcome','surgicallesion','attr25','attr26','attr27','cp_data'),
          na.strings=c('?'))

colum <- list('surgery','age','hosNum','temperature','pulse','respiratoryrate','temperatureofextremities',
                      'peripheralpulse','mucousmembranes','capillaryrefilltime','pain','peristalsis','abdominaldistension','nasogastrictube',
                      'nasogastricreflux','nasogastricrefluxPH','rectalexamination','abdomen','packedcellvolume','totalprotein','abdominocentesisappearance',
                      'abdomcentesistotalprotein','outcome','surgicallesion','attr25','attr26','attr27','cp_data')

numColIndex<-c(4,5,6,16,19,20,22)


###基于Similarity
algae <- read.table('data.txt',
          header=F,
          dec='.',
          col.names=c('surgery','age','hosNum','temperature','pulse','respiratoryrate','temperatureofextremities',
                      'peripheralpulse','mucousmembranes','capillaryrefilltime','pain','peristalsis','abdominaldistension','nasogastrictube',
                      'nasogastricreflux','nasogastricrefluxPH','rectalexamination','abdomen','packedcellvolume','totalprotein','abdominocentesisappearance',
                      'abdomcentesistotalprotein','outcome','surgicallesion','attr25','attr26','attr27','cp_data'),
          na.strings=c('?'))
algae <- knnImputation(algae,k=5)
write.csv(algae,file = "Analysis_Similarity.csv",na = "?") 

