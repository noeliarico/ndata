datas <- list.files("data", full.names = TRUE)
lapply(datas,load,.GlobalEnv)
