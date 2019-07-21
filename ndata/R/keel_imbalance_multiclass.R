# balance -----------------------------------------------------------------

balance <- read.keel("files/keel/imbalance/multiclass/balance.dat")
change <- colnames(balance)[colnames(balance) != "class"]
balance <- balance[, c("class", setdiff(colnames(balance), "class"))]
balancen <- balance %>% mutate_at(change, function(x) {as.numeric(as.character(x))})

set.seed(123)
ind <- createDataPartition(balance$class, p = 0.5, list = FALSE)
mini_balance <- balance[ind,]
mini_balancen <- balancen[ind,]
save(balance, balancen,
     mini_balance, mini_balancen,
     file = "data/balance.RData")

# contraceptive -----------------------------------------------------------------

contraceptive <- read.keel("files/keel/imbalance/multiclass/contraceptive.dat")
change <- colnames(contraceptive)[colnames(contraceptive) != "class"]
contraceptive <- contraceptive %>%
  mutate_at(change, function(x) {as.numeric(as.character(x))})
contraceptive <- contraceptive[, c("class", setdiff(colnames(contraceptive), "class"))]

contraceptiven <- contraceptive

contraceptive <- contraceptive %>% mutate(a2 = factor(a2),
                                          a3 = factor(a3),
                                          a5 = factor(a5),
                                          a6 = factor(a6),
                                          a7 = factor(a7),
                                          a8 = factor(a8),
                                          a9 = factor(a9))
set.seed(123)
ind <- createDataPartition(contraceptive$class, p = 0.2, list = FALSE)
mini_contraceptive <- contraceptive[ind,]
mini_contraceptiven <- contraceptiven[ind,]

save(contraceptive, contraceptiven,
     mini_contraceptive, mini_contraceptiven,
     file = "data/contraceptive.RData")

# ecoli -----------------------------------------------------------------

# cargado con los normales


# glass -------------------------------------------------------------------

glass <- read.keel("files/keel/imbalance/multiclass/glass.dat")
change <- colnames(glass)[colnames(glass) != "typeGlass"]
glass <- glass %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = typeGlass)
glass <- glass[, c("class", setdiff(colnames(glass), "class"))]

save(glass, file = "data/glass.RData")

# hayes-roth -----------------------------------------------------------------

hayes_roth <- read.keel("files/keel/imbalance/multiclass/hayes-roth.dat")
hayes_roth <- hayes_roth[, c("class", setdiff(colnames(hayes_roth), "class"))]
change <- colnames(hayes_roth)[colnames(hayes_roth) != "class"]
hayes_rothn <- hayes_roth %>% mutate_at(change, function(x) {as.numeric(as.character(x))})

save(hayes_roth, hayes_rothn, file = "data/hayes_roth.RData")

# new_thyroid -----------------------------------------------------------------

new_thyroid <- read.keel("files/keel/imbalance/multiclass/new-thyroid.dat")
change <- colnames(new_thyroid)[colnames(new_thyroid) != "class"]
new_thyroid <- new_thyroid %>% mutate_at(change, function(x) {as.numeric(as.character(x))})
new_thyroid <- new_thyroid[, c("class", setdiff(colnames(new_thyroid), "class"))]
save(new_thyroid, file = "data/new_thyroid.RData")

# penbased -----------------------------------------------------------------

penbased <- read.keel("files/keel/imbalance/multiclass/penbased.dat")
change <- colnames(penbased)[colnames(penbased) != "class"]
penbased <- penbased %>% mutate_at(change, function(x) {as.numeric(as.character(x))})
penbased <- penbased[, c("class", setdiff(colnames(penbased), "class"))]

set.seed(123)
ind <- createDataPartition(penbased$class, p = 0.1, list = FALSE)
mini_penbased <- penbased[ind,]
save(penbased, mini_penbased, file = "data/penbased.RData")

# shuttle -----------------------------------------------------------------

shuttle <- read.keel("files/keel/imbalance/multiclass/shuttle.dat")

change <- colnames(shuttle)[colnames(shuttle) != "class"]
shuttle <- shuttle %>% mutate_at(change, function(x) {as.numeric(as.character(x))})
shuttle <- shuttle[, c("class", setdiff(colnames(shuttle), "class"))]

set.seed(123)
ind <- createDataPartition(shuttle$class, p = 0.1, list = FALSE)
mini_shuttle <- shuttle[ind,]

save(shuttle, mini_shuttle, file = "data/shuttle.RData")

# wine -----------------------------------------------------------------

wine <- read.keel("files/keel/imbalance/multiclass/wine.dat")
change <- colnames(wine)[colnames(wine) != "class"]
wine <- wine %>% mutate_at(change, function(x) {as.numeric(as.character(x))})
wine <- wine[, c("class", setdiff(colnames(wine), "class"))]
save(wine, file = "data/wine.RData")

# yeast -----------------------------------------------------------------

# cargado en load


