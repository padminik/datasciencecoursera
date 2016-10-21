pollutantmean<-function(directory,pollutant,id=1:332){
        files<-list.files(directory,full.names=TRUE)
        tmp <- vector(mode = "list", length = length(files))
        tmp<-lapply(files,read.csv)
        all_locs<-do.call(rbind,tmp)
        all_locs_subset<-subset(all_locs, ID>=id[1] & ID<=id[length(id)])
        mean(all_locs_subset[,pollutant],na.rm=TRUE)
}
