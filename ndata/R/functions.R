output_details <- function(datasets, latex = FALSE) {
  info <- tribble(~name, ~instances, ~features, ~classes)
  for(dname in datasets) {
    d <- get(dname)
    info <- info %>% bind_rows(tibble(name = dname,
                                      instances = nrow(d),
                                      features = ncol(d) - 1,
                                      classes = length(unique(d$class)),
                                      proportion = paste0("[",glue_collapse(round(as.numeric(prop.table(table(d$class))), 2), sep = "/"), "]")))
  }
  if(latex) return(xtable(info))
  return(info)
}
