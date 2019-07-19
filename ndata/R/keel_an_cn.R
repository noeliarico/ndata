

haberman <- read_csv(file.path("files", "haberman.csv"),
                     col_types = cols(.default = col_double(),
                                      class = col_factor()),
                     col_names = c("age", "year", "nodes", "class"))
haberman <- haberman[, c("class", setdiff(colnames(haberman), "class"))]

save(haberman, file = "data/haberman.RData")
