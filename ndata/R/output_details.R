library(glue)
library(tidyverse)
library(xtable)

# La lista de datasets se pasa como un vector de strings con el nombre de los datasets
output_details <- function(datasets, latex = FALSE) {
  info <- tribble(~name, ~type, ~instances, ~features, ~num_cat, ~classes, ~class_names, ~proportion, ~imbalance_ratio)
  for(dname in datasets) {
    print(dname)
    d <- get(dname)
    info <- info %>% bind_rows(tibble(name = dname,
                                      type = factor(type(d)),
                                      instances = nrow(d),
                                      features = ncol(d) - 1,
                                      num_cat = numcat(d),
                                      classes = length(unique(d$class)),
                                      class_names = paste0("[",glue_collapse(names(table(d$class)), sep = "/"), "]"),
                                      proportion = paste0("[",glue_collapse(round(as.numeric(prop.table(table(d$class))), 2), sep = "/"), "]"),
                                      imbalance_ratio = round(ifelse(length(names(table(d$class))) == 2, max(((table(d$class)[1])/(table(d$class)[2])), ((table(d$class)[2])/(table(d$class)[1]))), -1 ), 2)))
  }
  if(latex) return(xtable(info))
  return(info)
}
