# Bank note ---------------------------------------------------------------

bank_note <- read_csv(file.path(path_to_data, "data/binary/numerical/lessthan10/bank_note.csv"),
                      col_types = cols(class = col_factor(NULL)),
                      col_names = c("variance",
                                    "skewness",
                                    "curtosis",
                                    "entropy",
                                    "class"))
