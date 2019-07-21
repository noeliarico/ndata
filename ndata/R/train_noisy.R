names <- c("ecoli", "glass", "ionosphere", "sonar")

cv_sufixes <- apply(expand.grid("_5_", 1:5, c("tra","tst")), 1, glue_collapse)
an_cn5_sufixes <- paste0("5an_cn", cv_sufixes)
an_cn20_sufixes <- paste0("20an_cn", cv_sufixes)

#names_an_cn5 <- apply(expand.grid(names, an_cn5_sufixes), 1, glue_collapse)
names_an_cn5 <- paste0(names[1], "_", an_cn5_sufixes)

class_index <- 8
ecoli_5an_cn_5_1 <- noelia_train(ecoli_5an_cn_5_1tra, ecoli_5an_cn_5_1tst, class_index)
ecoli_5an_cn_5_2 <- noelia_train(ecoli_5an_cn_5_2tra, ecoli_5an_cn_5_2tst, class_index)
ecoli_5an_cn_5_3 <- noelia_train(ecoli_5an_cn_5_3tra, ecoli_5an_cn_5_3tst, class_index)
ecoli_5an_cn_5_4 <- noelia_train(ecoli_5an_cn_5_4tra, ecoli_5an_cn_5_4tst, class_index)
ecoli_5an_cn_5_5 <- noelia_train(ecoli_5an_cn_5_5tra, ecoli_5an_cn_5_5tst, class_index)

ecoli_5an_cn <- bind_rows(ecoli_5an_cn_5_1,
                          ecoli_5an_cn_5_2,
                          ecoli_5an_cn_5_3,
                          ecoli_5an_cn_5_4,
                          ecoli_5an_cn_5_5,) %>%
  # evaluate following calls for each value in the rowname column
  group_by(k, method, type) %>%
  # add all non-grouping variables
  summarise_if(is.numeric, mean, na.rm = TRUE) %>%
  ungroup()

# compare_metric_noisy("ecoli_5an_cn", metric = "Kappa", input = "numerical")
# compare_metric_noisy("ecoli_5an_cn", metric = "F1", input = "numerical")
