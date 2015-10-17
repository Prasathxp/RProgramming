> pollutantmean <- function(directory,pollutant,id) {
+     ## data frame created
+     datf <- data.frame()
+     ## List of all files in the folder 
+     lst_file <- list.files(directory,full.names=TRUE)
+     ## using rbind to combined all the files using for loop
+     for (i in id) {
+         datf <- rbind(datf,read.csv(lst_file[i]))
+     }
+     ## based on type calculating mean
+     if(pollutant=="sulfate"){
+         sf <- mean(datf$sulfate, na.rm=TRUE)    
+         sf
+     }else if(pollutant=="nitrate"){
+     nt <- mean(datf$nitrate, na.rm=TRUE)    
+     nt
+     }
+ 
+ }
