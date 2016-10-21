corr<-function(directory,threshold){
        correlationVector=NULL
        files<-list.files(directory,full.names=TRUE)
        tmp <- vector(mode = "list", length = length(files))
        tmp<-lapply(files,read.csv)
        all_locs<-do.call(rbind,tmp)
        na.omit(all_locs)
        if (nrow(all_locs) > threshold) {
                correlationVector = c(correlationVector, cor(all_locs[,2], all_locs[,3]))
        }
        return(correlationVector)
}