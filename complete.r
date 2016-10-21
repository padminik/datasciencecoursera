complete<-function(directory,id){
        files<-list.files(directory,full.names=TRUE)
        tmp <- vector(mode = "list", length = length(files))
        tmp<-lapply(files,read.csv)
        all_locs<-do.call(rbind,tmp)
        na.omit(all_locs)
        nobs<-vector(mode="integer",length=length(id))
        for(i in seq_along(id)){
                nobs<-c(nobs,nrows(all_locs("ID"==i)))
        }
        data.frame("id"=id,"nobs"=nobs)
}
         