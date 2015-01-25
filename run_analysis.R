
## Se cargan los datos a dataframes en R
dat_test = read.table("./UCI HAR Dataset/test/X_test.txt")
dat_train = read.table("./UCI HAR Dataset/train/X_train.txt")

## Se cargan los nombres de las columnas
cols = read.table("./UCI HAR Dataset/features.txt")

##Obtiene las columnas que se solicitan en el ejercicio
col.mean = cols[grep("mean", cols$V2),]
col.std = cols[grep("std", cols$V2),]
cols2 = rbind(col.mean, col.std)
cols2 = cols2[order(cols2$V1),1]

## Obtener solo los valores de las columnas de mean y std
dat_test = dat_test[cols2]
dat_train = dat_train[cols2]

## Pone los nombres de las columnas
names(dat_test) = cols[cols2,2]
names(dat_train) = cols[cols2,2]

## Se le agrega un Id para que sirva de concatenación
dat_test = cbind(Id=1:length(dat_test[,1]) , dat_test)
dat_train = cbind(Id=1:length(dat_train[,1]) , dat_train)

## Se hace el marge de los dos dataframes
mergeData = merge(dat_test, dat_train, by.x="Id", by.y="Id", all=TRUE)

write.table(mergeData, "mergeData.txt", sep = ",", row.names = FALSE)
