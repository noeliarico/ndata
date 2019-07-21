# ecoli_5an --------------------------------------------------------------

ecoli_5an_nc_5_1tra <- read.keel("files/keel/noisy/an/nc/nc5/ecoli-5an-nc/ecoli-5an-nc-5-1tra.dat")
ecoli_5an_nc_5_1tst <- read.keel("files/keel/noisy/an/nc/nc5/ecoli-5an-nc/ecoli-5an-nc-5-1tst.dat")
ecoli_5an_nc_5_1tst$Site <- factor(as.character(ecoli_5an_nc_5_1tst$Site), levels = c("cp","im","imL","imS","imU","om","omL","pp"))
ecoli_5an_nc_5_2tra <- read.keel("files/keel/noisy/an/nc/nc5/ecoli-5an-nc/ecoli-5an-nc-5-2tra.dat")
ecoli_5an_nc_5_2tst <- read.keel("files/keel/noisy/an/nc/nc5/ecoli-5an-nc/ecoli-5an-nc-5-2tst.dat")
ecoli_5an_nc_5_2tst$Site <- factor(as.character(ecoli_5an_nc_5_2tst$Site), levels = c("cp","im","imL","imS","imU","om","omL","pp"))
ecoli_5an_nc_5_3tra <- read.keel("files/keel/noisy/an/nc/nc5/ecoli-5an-nc/ecoli-5an-nc-5-3tra.dat")
ecoli_5an_nc_5_3tst <- read.keel("files/keel/noisy/an/nc/nc5/ecoli-5an-nc/ecoli-5an-nc-5-3tst.dat")
ecoli_5an_nc_5_3tst$Site <- factor(as.character(ecoli_5an_nc_5_3tst$Site), levels = c("cp","im","imL","imS","imU","om","omL","pp"))
ecoli_5an_nc_5_4tra <- read.keel("files/keel/noisy/an/nc/nc5/ecoli-5an-nc/ecoli-5an-nc-5-4tra.dat")
ecoli_5an_nc_5_4tst <- read.keel("files/keel/noisy/an/nc/nc5/ecoli-5an-nc/ecoli-5an-nc-5-4tst.dat")
ecoli_5an_nc_5_4tst$Site <- factor(as.character(ecoli_5an_nc_5_4tst$Site), levels = c("cp","im","imL","imS","imU","om","omL","pp"))
ecoli_5an_nc_5_5tra <- read.keel("files/keel/noisy/an/nc/nc5/ecoli-5an-nc/ecoli-5an-nc-5-5tra.dat")
ecoli_5an_nc_5_5tst <- read.keel("files/keel/noisy/an/nc/nc5/ecoli-5an-nc/ecoli-5an-nc-5-5tst.dat")
ecoli_5an_nc_5_5tst$Site <- factor(as.character(ecoli_5an_nc_5_5tst$Site), levels = c("cp","im","imL","imS","imU","om","omL","pp"))

change <- colnames(ecoli_5an_nc_5_1tra)[colnames(ecoli_5an_nc_5_1tra) != "Site"]
ecoli_5an_nc_5_1tra <- ecoli_5an_nc_5_1tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Site)
ecoli_5an_nc_5_1tst <- ecoli_5an_nc_5_1tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Site)
ecoli_5an_nc_5_2tra <- ecoli_5an_nc_5_2tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Site)
ecoli_5an_nc_5_2tst <- ecoli_5an_nc_5_2tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Site)
ecoli_5an_nc_5_3tra <- ecoli_5an_nc_5_3tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Site)
ecoli_5an_nc_5_3tst <- ecoli_5an_nc_5_3tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Site)
ecoli_5an_nc_5_4tra <- ecoli_5an_nc_5_4tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Site)
ecoli_5an_nc_5_4tst <- ecoli_5an_nc_5_4tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Site)
ecoli_5an_nc_5_5tra <- ecoli_5an_nc_5_5tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Site)
ecoli_5an_nc_5_5tst <- ecoli_5an_nc_5_5tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Site)

ecoli_5an_nc_5_1tra <- ecoli_5an_nc_5_1tra[, c("class", setdiff(colnames(ecoli_5an_nc_5_1tra), "class"))]
ecoli_5an_nc_5_1tst <- ecoli_5an_nc_5_1tst[, c("class", setdiff(colnames(ecoli_5an_nc_5_1tst), "class"))]
ecoli_5an_nc_5_2tra <- ecoli_5an_nc_5_2tra[, c("class", setdiff(colnames(ecoli_5an_nc_5_2tra), "class"))]
ecoli_5an_nc_5_2tst <- ecoli_5an_nc_5_2tst[, c("class", setdiff(colnames(ecoli_5an_nc_5_2tst), "class"))]
ecoli_5an_nc_5_3tra <- ecoli_5an_nc_5_3tra[, c("class", setdiff(colnames(ecoli_5an_nc_5_3tra), "class"))]
ecoli_5an_nc_5_3tst <- ecoli_5an_nc_5_3tst[, c("class", setdiff(colnames(ecoli_5an_nc_5_3tst), "class"))]
ecoli_5an_nc_5_4tra <- ecoli_5an_nc_5_4tra[, c("class", setdiff(colnames(ecoli_5an_nc_5_4tra), "class"))]
ecoli_5an_nc_5_4tst <- ecoli_5an_nc_5_4tst[, c("class", setdiff(colnames(ecoli_5an_nc_5_4tst), "class"))]
ecoli_5an_nc_5_5tra <- ecoli_5an_nc_5_5tra[, c("class", setdiff(colnames(ecoli_5an_nc_5_5tra), "class"))]
ecoli_5an_nc_5_5tst <- ecoli_5an_nc_5_5tst[, c("class", setdiff(colnames(ecoli_5an_nc_5_5tst), "class"))]

save(ecoli_5an_nc_5_1tra, ecoli_5an_nc_5_1tst,
     ecoli_5an_nc_5_2tra, ecoli_5an_nc_5_2tst,
     ecoli_5an_nc_5_3tra, ecoli_5an_nc_5_3tst,
     ecoli_5an_nc_5_4tra, ecoli_5an_nc_5_4tst,
     ecoli_5an_nc_5_5tra, ecoli_5an_nc_5_5tst,
     file = "data/ecoli_5an_nc.RData")

# glass_5an --------------------------------------------------------------

glass_5an_nc_5_1tra <- read.keel("files/keel/noisy/an/nc/nc5/glass-5an-nc/glass-5an-nc-5-1tra.dat")
glass_5an_nc_5_1tst <- read.keel("files/keel/noisy/an/nc/nc5/glass-5an-nc/glass-5an-nc-5-1tst.dat")
glass_5an_nc_5_2tra <- read.keel("files/keel/noisy/an/nc/nc5/glass-5an-nc/glass-5an-nc-5-2tra.dat")
glass_5an_nc_5_2tst <- read.keel("files/keel/noisy/an/nc/nc5/glass-5an-nc/glass-5an-nc-5-2tst.dat")
glass_5an_nc_5_3tra <- read.keel("files/keel/noisy/an/nc/nc5/glass-5an-nc/glass-5an-nc-5-3tra.dat")
glass_5an_nc_5_3tst <- read.keel("files/keel/noisy/an/nc/nc5/glass-5an-nc/glass-5an-nc-5-3tst.dat")
glass_5an_nc_5_4tra <- read.keel("files/keel/noisy/an/nc/nc5/glass-5an-nc/glass-5an-nc-5-4tra.dat")
glass_5an_nc_5_4tst <- read.keel("files/keel/noisy/an/nc/nc5/glass-5an-nc/glass-5an-nc-5-4tst.dat")
glass_5an_nc_5_5tra <- read.keel("files/keel/noisy/an/nc/nc5/glass-5an-nc/glass-5an-nc-5-5tra.dat")
glass_5an_nc_5_5tst <- read.keel("files/keel/noisy/an/nc/nc5/glass-5an-nc/glass-5an-nc-5-5tst.dat")

change <- colnames(glass_5an_nc_5_1tra)[colnames(glass_5an_nc_5_1tra) != "TypeGlass"]
glass_5an_nc_5_1tra <- glass_5an_nc_5_1tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = TypeGlass)
glass_5an_nc_5_1tst <- glass_5an_nc_5_1tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = TypeGlass)
glass_5an_nc_5_2tra <- glass_5an_nc_5_2tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = TypeGlass)
glass_5an_nc_5_2tst <- glass_5an_nc_5_2tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = TypeGlass)
glass_5an_nc_5_3tra <- glass_5an_nc_5_3tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = TypeGlass)
glass_5an_nc_5_3tst <- glass_5an_nc_5_3tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = TypeGlass)
glass_5an_nc_5_4tra <- glass_5an_nc_5_4tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = TypeGlass)
glass_5an_nc_5_4tst <- glass_5an_nc_5_4tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = TypeGlass)
glass_5an_nc_5_5tra <- glass_5an_nc_5_5tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = TypeGlass)
glass_5an_nc_5_5tst <- glass_5an_nc_5_5tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = TypeGlass)

glass_5an_nc_5_1tra <- glass_5an_nc_5_1tra[, c("class", setdiff(colnames(glass_5an_nc_5_1tra), "class"))]
glass_5an_nc_5_1tst <- glass_5an_nc_5_1tst[, c("class", setdiff(colnames(glass_5an_nc_5_1tst), "class"))]
glass_5an_nc_5_2tra <- glass_5an_nc_5_2tra[, c("class", setdiff(colnames(glass_5an_nc_5_2tra), "class"))]
glass_5an_nc_5_2tst <- glass_5an_nc_5_2tst[, c("class", setdiff(colnames(glass_5an_nc_5_2tst), "class"))]
glass_5an_nc_5_3tra <- glass_5an_nc_5_3tra[, c("class", setdiff(colnames(glass_5an_nc_5_3tra), "class"))]
glass_5an_nc_5_3tst <- glass_5an_nc_5_3tst[, c("class", setdiff(colnames(glass_5an_nc_5_3tst), "class"))]
glass_5an_nc_5_4tra <- glass_5an_nc_5_4tra[, c("class", setdiff(colnames(glass_5an_nc_5_4tra), "class"))]
glass_5an_nc_5_4tst <- glass_5an_nc_5_4tst[, c("class", setdiff(colnames(glass_5an_nc_5_4tst), "class"))]
glass_5an_nc_5_5tra <- glass_5an_nc_5_5tra[, c("class", setdiff(colnames(glass_5an_nc_5_5tra), "class"))]
glass_5an_nc_5_5tst <- glass_5an_nc_5_5tst[, c("class", setdiff(colnames(glass_5an_nc_5_5tst), "class"))]

save(glass_5an_nc_5_1tra, glass_5an_nc_5_1tst,
     glass_5an_nc_5_2tra, glass_5an_nc_5_2tst,
     glass_5an_nc_5_3tra, glass_5an_nc_5_3tst,
     glass_5an_nc_5_4tra, glass_5an_nc_5_4tst,
     glass_5an_nc_5_5tra, glass_5an_nc_5_5tst,
     file = "data/glass_5an_nc.RData")

# ionosphere_5an --------------------------------------------------------------

ionosphere_5an_nc_5_1tra <- read.keel("files/keel/noisy/an/nc/nc5/ionosphere-5an-nc/ionosphere-5an-nc-5-1tra.dat")
ionosphere_5an_nc_5_1tst <- read.keel("files/keel/noisy/an/nc/nc5/ionosphere-5an-nc/ionosphere-5an-nc-5-1tst.dat")
ionosphere_5an_nc_5_2tra <- read.keel("files/keel/noisy/an/nc/nc5/ionosphere-5an-nc/ionosphere-5an-nc-5-2tra.dat")
ionosphere_5an_nc_5_2tst <- read.keel("files/keel/noisy/an/nc/nc5/ionosphere-5an-nc/ionosphere-5an-nc-5-2tst.dat")
ionosphere_5an_nc_5_3tra <- read.keel("files/keel/noisy/an/nc/nc5/ionosphere-5an-nc/ionosphere-5an-nc-5-3tra.dat")
ionosphere_5an_nc_5_3tst <- read.keel("files/keel/noisy/an/nc/nc5/ionosphere-5an-nc/ionosphere-5an-nc-5-3tst.dat")
ionosphere_5an_nc_5_4tra <- read.keel("files/keel/noisy/an/nc/nc5/ionosphere-5an-nc/ionosphere-5an-nc-5-4tra.dat")
ionosphere_5an_nc_5_4tst <- read.keel("files/keel/noisy/an/nc/nc5/ionosphere-5an-nc/ionosphere-5an-nc-5-4tst.dat")
ionosphere_5an_nc_5_5tra <- read.keel("files/keel/noisy/an/nc/nc5/ionosphere-5an-nc/ionosphere-5an-nc-5-5tra.dat")
ionosphere_5an_nc_5_5tst <- read.keel("files/keel/noisy/an/nc/nc5/ionosphere-5an-nc/ionosphere-5an-nc-5-5tst.dat")

change <- colnames(ionosphere_5an_nc_5_1tra)[colnames(ionosphere_5an_nc_5_1tra) != "Class"]
ionosphere_5an_nc_5_1tra <- ionosphere_5an_nc_5_1tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
ionosphere_5an_nc_5_1tst <- ionosphere_5an_nc_5_1tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
ionosphere_5an_nc_5_2tra <- ionosphere_5an_nc_5_2tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
ionosphere_5an_nc_5_2tst <- ionosphere_5an_nc_5_2tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
ionosphere_5an_nc_5_3tra <- ionosphere_5an_nc_5_3tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
ionosphere_5an_nc_5_3tst <- ionosphere_5an_nc_5_3tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
ionosphere_5an_nc_5_4tra <- ionosphere_5an_nc_5_4tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
ionosphere_5an_nc_5_4tst <- ionosphere_5an_nc_5_4tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
ionosphere_5an_nc_5_5tra <- ionosphere_5an_nc_5_5tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
ionosphere_5an_nc_5_5tst <- ionosphere_5an_nc_5_5tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)

ionosphere_5an_nc_5_1tra <- ionosphere_5an_nc_5_1tra[, c("class", setdiff(colnames(ionosphere_5an_nc_5_1tra), "class"))]
ionosphere_5an_nc_5_1tst <- ionosphere_5an_nc_5_1tst[, c("class", setdiff(colnames(ionosphere_5an_nc_5_1tst), "class"))]
ionosphere_5an_nc_5_2tra <- ionosphere_5an_nc_5_2tra[, c("class", setdiff(colnames(ionosphere_5an_nc_5_2tra), "class"))]
ionosphere_5an_nc_5_2tst <- ionosphere_5an_nc_5_2tst[, c("class", setdiff(colnames(ionosphere_5an_nc_5_2tst), "class"))]
ionosphere_5an_nc_5_3tra <- ionosphere_5an_nc_5_3tra[, c("class", setdiff(colnames(ionosphere_5an_nc_5_3tra), "class"))]
ionosphere_5an_nc_5_3tst <- ionosphere_5an_nc_5_3tst[, c("class", setdiff(colnames(ionosphere_5an_nc_5_3tst), "class"))]
ionosphere_5an_nc_5_4tra <- ionosphere_5an_nc_5_4tra[, c("class", setdiff(colnames(ionosphere_5an_nc_5_4tra), "class"))]
ionosphere_5an_nc_5_4tst <- ionosphere_5an_nc_5_4tst[, c("class", setdiff(colnames(ionosphere_5an_nc_5_4tst), "class"))]
ionosphere_5an_nc_5_5tra <- ionosphere_5an_nc_5_5tra[, c("class", setdiff(colnames(ionosphere_5an_nc_5_5tra), "class"))]
ionosphere_5an_nc_5_5tst <- ionosphere_5an_nc_5_5tst[, c("class", setdiff(colnames(ionosphere_5an_nc_5_5tst), "class"))]

save(ionosphere_5an_nc_5_1tra, ionosphere_5an_nc_5_1tst,
     ionosphere_5an_nc_5_2tra, ionosphere_5an_nc_5_2tst,
     ionosphere_5an_nc_5_3tra, ionosphere_5an_nc_5_3tst,
     ionosphere_5an_nc_5_4tra, ionosphere_5an_nc_5_4tst,
     ionosphere_5an_nc_5_5tra, ionosphere_5an_nc_5_5tst,
     file = "data/ionosphere_5an_nc.RData")


# iris_5an --------------------------------------------------------------

iris_5an_nc_5_1tra <- read.keel("files/keel/noisy/an/nc/nc5/iris-5an-nc/iris-5an-nc-5-1tra.dat")
iris_5an_nc_5_1tst <- read.keel("files/keel/noisy/an/nc/nc5/iris-5an-nc/iris-5an-nc-5-1tst.dat")
iris_5an_nc_5_2tra <- read.keel("files/keel/noisy/an/nc/nc5/iris-5an-nc/iris-5an-nc-5-2tra.dat")
iris_5an_nc_5_2tst <- read.keel("files/keel/noisy/an/nc/nc5/iris-5an-nc/iris-5an-nc-5-2tst.dat")
iris_5an_nc_5_3tra <- read.keel("files/keel/noisy/an/nc/nc5/iris-5an-nc/iris-5an-nc-5-3tra.dat")
iris_5an_nc_5_3tst <- read.keel("files/keel/noisy/an/nc/nc5/iris-5an-nc/iris-5an-nc-5-3tst.dat")
iris_5an_nc_5_4tra <- read.keel("files/keel/noisy/an/nc/nc5/iris-5an-nc/iris-5an-nc-5-4tra.dat")
iris_5an_nc_5_4tst <- read.keel("files/keel/noisy/an/nc/nc5/iris-5an-nc/iris-5an-nc-5-4tst.dat")
iris_5an_nc_5_5tra <- read.keel("files/keel/noisy/an/nc/nc5/iris-5an-nc/iris-5an-nc-5-5tra.dat")
iris_5an_nc_5_5tst <- read.keel("files/keel/noisy/an/nc/nc5/iris-5an-nc/iris-5an-nc-5-5tst.dat")

change <- colnames(iris_5an_nc_5_1tra)[colnames(iris_5an_nc_5_1tra) != "Class"]
iris_5an_nc_5_1tra <- iris_5an_nc_5_1tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
iris_5an_nc_5_1tst <- iris_5an_nc_5_1tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
iris_5an_nc_5_2tra <- iris_5an_nc_5_2tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
iris_5an_nc_5_2tst <- iris_5an_nc_5_2tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
iris_5an_nc_5_3tra <- iris_5an_nc_5_3tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
iris_5an_nc_5_3tst <- iris_5an_nc_5_3tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
iris_5an_nc_5_4tra <- iris_5an_nc_5_4tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
iris_5an_nc_5_4tst <- iris_5an_nc_5_4tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
iris_5an_nc_5_5tra <- iris_5an_nc_5_5tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
iris_5an_nc_5_5tst <- iris_5an_nc_5_5tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)

iris_5an_nc_5_1tra <- iris_5an_nc_5_1tra[, c("class", setdiff(colnames(iris_5an_nc_5_1tra), "class"))]
iris_5an_nc_5_1tst <- iris_5an_nc_5_1tst[, c("class", setdiff(colnames(iris_5an_nc_5_1tst), "class"))]
iris_5an_nc_5_2tra <- iris_5an_nc_5_2tra[, c("class", setdiff(colnames(iris_5an_nc_5_2tra), "class"))]
iris_5an_nc_5_2tst <- iris_5an_nc_5_2tst[, c("class", setdiff(colnames(iris_5an_nc_5_2tst), "class"))]
iris_5an_nc_5_3tra <- iris_5an_nc_5_3tra[, c("class", setdiff(colnames(iris_5an_nc_5_3tra), "class"))]
iris_5an_nc_5_3tst <- iris_5an_nc_5_3tst[, c("class", setdiff(colnames(iris_5an_nc_5_3tst), "class"))]
iris_5an_nc_5_4tra <- iris_5an_nc_5_4tra[, c("class", setdiff(colnames(iris_5an_nc_5_4tra), "class"))]
iris_5an_nc_5_4tst <- iris_5an_nc_5_4tst[, c("class", setdiff(colnames(iris_5an_nc_5_4tst), "class"))]
iris_5an_nc_5_5tra <- iris_5an_nc_5_5tra[, c("class", setdiff(colnames(iris_5an_nc_5_5tra), "class"))]
iris_5an_nc_5_5tst <- iris_5an_nc_5_5tst[, c("class", setdiff(colnames(iris_5an_nc_5_5tst), "class"))]

save(iris_5an_nc_5_1tra, iris_5an_nc_5_1tst,
     iris_5an_nc_5_2tra, iris_5an_nc_5_2tst,
     iris_5an_nc_5_3tra, iris_5an_nc_5_3tst,
     iris_5an_nc_5_4tra, iris_5an_nc_5_4tst,
     iris_5an_nc_5_5tra, iris_5an_nc_5_5tst,
     file = "data/iris_5an_nc.RData")

# sonar_5an --------------------------------------------------------------

sonar_5an_nc_5_1tra <- read.keel("files/keel/noisy/an/nc/nc5/sonar-5an-nc/sonar-5an-nc-5-1tra.dat")
sonar_5an_nc_5_1tst <- read.keel("files/keel/noisy/an/nc/nc5/sonar-5an-nc/sonar-5an-nc-5-1tst.dat")
sonar_5an_nc_5_2tra <- read.keel("files/keel/noisy/an/nc/nc5/sonar-5an-nc/sonar-5an-nc-5-2tra.dat")
sonar_5an_nc_5_2tst <- read.keel("files/keel/noisy/an/nc/nc5/sonar-5an-nc/sonar-5an-nc-5-2tst.dat")
sonar_5an_nc_5_3tra <- read.keel("files/keel/noisy/an/nc/nc5/sonar-5an-nc/sonar-5an-nc-5-3tra.dat")
sonar_5an_nc_5_3tst <- read.keel("files/keel/noisy/an/nc/nc5/sonar-5an-nc/sonar-5an-nc-5-3tst.dat")
sonar_5an_nc_5_4tra <- read.keel("files/keel/noisy/an/nc/nc5/sonar-5an-nc/sonar-5an-nc-5-4tra.dat")
sonar_5an_nc_5_4tst <- read.keel("files/keel/noisy/an/nc/nc5/sonar-5an-nc/sonar-5an-nc-5-4tst.dat")
sonar_5an_nc_5_5tra <- read.keel("files/keel/noisy/an/nc/nc5/sonar-5an-nc/sonar-5an-nc-5-5tra.dat")
sonar_5an_nc_5_5tst <- read.keel("files/keel/noisy/an/nc/nc5/sonar-5an-nc/sonar-5an-nc-5-5tst.dat")

change <- colnames(sonar_5an_nc_5_1tra)[colnames(sonar_5an_nc_5_1tra) != "Type"]
sonar_5an_nc_5_1tra <- sonar_5an_nc_5_1tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Type)
sonar_5an_nc_5_1tst <- sonar_5an_nc_5_1tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Type)
sonar_5an_nc_5_2tra <- sonar_5an_nc_5_2tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Type)
sonar_5an_nc_5_2tst <- sonar_5an_nc_5_2tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Type)
sonar_5an_nc_5_3tra <- sonar_5an_nc_5_3tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Type)
sonar_5an_nc_5_3tst <- sonar_5an_nc_5_3tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Type)
sonar_5an_nc_5_4tra <- sonar_5an_nc_5_4tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Type)
sonar_5an_nc_5_4tst <- sonar_5an_nc_5_4tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Type)
sonar_5an_nc_5_5tra <- sonar_5an_nc_5_5tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Type)
sonar_5an_nc_5_5tst <- sonar_5an_nc_5_5tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Type)

sonar_5an_nc_5_1tra <- sonar_5an_nc_5_1tra %>% mutate(class = fct_relevel(class, "R", "M"))
sonar_5an_nc_5_1tst <- sonar_5an_nc_5_1tst %>% mutate(class = fct_relevel(class, "R", "M"))
sonar_5an_nc_5_2tra <- sonar_5an_nc_5_2tra %>% mutate(class = fct_relevel(class, "R", "M"))
sonar_5an_nc_5_2tst <- sonar_5an_nc_5_2tst %>% mutate(class = fct_relevel(class, "R", "M"))
sonar_5an_nc_5_3tra <- sonar_5an_nc_5_3tra %>% mutate(class = fct_relevel(class, "R", "M"))
sonar_5an_nc_5_3tst <- sonar_5an_nc_5_3tst %>% mutate(class = fct_relevel(class, "R", "M"))
sonar_5an_nc_5_4tra <- sonar_5an_nc_5_4tra %>% mutate(class = fct_relevel(class, "R", "M"))
sonar_5an_nc_5_4tst <- sonar_5an_nc_5_4tst %>% mutate(class = fct_relevel(class, "R", "M"))
sonar_5an_nc_5_5tra <- sonar_5an_nc_5_5tra %>% mutate(class = fct_relevel(class, "R", "M"))
sonar_5an_nc_5_5tst <- sonar_5an_nc_5_5tst %>% mutate(class = fct_relevel(class, "R", "M"))

sonar_5an_nc_5_1tra <- sonar_5an_nc_5_1tra[, c("class", setdiff(colnames(sonar_5an_nc_5_1tra), "class"))]
sonar_5an_nc_5_1tst <- sonar_5an_nc_5_1tst[, c("class", setdiff(colnames(sonar_5an_nc_5_1tst), "class"))]
sonar_5an_nc_5_2tra <- sonar_5an_nc_5_2tra[, c("class", setdiff(colnames(sonar_5an_nc_5_2tra), "class"))]
sonar_5an_nc_5_2tst <- sonar_5an_nc_5_2tst[, c("class", setdiff(colnames(sonar_5an_nc_5_2tst), "class"))]
sonar_5an_nc_5_3tra <- sonar_5an_nc_5_3tra[, c("class", setdiff(colnames(sonar_5an_nc_5_3tra), "class"))]
sonar_5an_nc_5_3tst <- sonar_5an_nc_5_3tst[, c("class", setdiff(colnames(sonar_5an_nc_5_3tst), "class"))]
sonar_5an_nc_5_4tra <- sonar_5an_nc_5_4tra[, c("class", setdiff(colnames(sonar_5an_nc_5_4tra), "class"))]
sonar_5an_nc_5_4tst <- sonar_5an_nc_5_4tst[, c("class", setdiff(colnames(sonar_5an_nc_5_4tst), "class"))]
sonar_5an_nc_5_5tra <- sonar_5an_nc_5_5tra[, c("class", setdiff(colnames(sonar_5an_nc_5_5tra), "class"))]
sonar_5an_nc_5_5tst <- sonar_5an_nc_5_5tst[, c("class", setdiff(colnames(sonar_5an_nc_5_5tst), "class"))]

save(sonar_5an_nc_5_1tra, sonar_5an_nc_5_1tst,
     sonar_5an_nc_5_2tra, sonar_5an_nc_5_2tst,
     sonar_5an_nc_5_3tra, sonar_5an_nc_5_3tst,
     sonar_5an_nc_5_4tra, sonar_5an_nc_5_4tst,
     sonar_5an_nc_5_5tra, sonar_5an_nc_5_5tst,
     file = "data/sonar_5an_nc.RData")

# wine_5an --------------------------------------------------------------

wine_5an_nc_5_1tra <- read.keel("files/keel/noisy/an/nc/nc5/wine-5an-nc/wine-5an-nc-5-1tra.dat")
wine_5an_nc_5_1tst <- read.keel("files/keel/noisy/an/nc/nc5/wine-5an-nc/wine-5an-nc-5-1tst.dat")
wine_5an_nc_5_2tra <- read.keel("files/keel/noisy/an/nc/nc5/wine-5an-nc/wine-5an-nc-5-2tra.dat")
wine_5an_nc_5_2tst <- read.keel("files/keel/noisy/an/nc/nc5/wine-5an-nc/wine-5an-nc-5-2tst.dat")
wine_5an_nc_5_3tra <- read.keel("files/keel/noisy/an/nc/nc5/wine-5an-nc/wine-5an-nc-5-3tra.dat")
wine_5an_nc_5_3tst <- read.keel("files/keel/noisy/an/nc/nc5/wine-5an-nc/wine-5an-nc-5-3tst.dat")
wine_5an_nc_5_4tra <- read.keel("files/keel/noisy/an/nc/nc5/wine-5an-nc/wine-5an-nc-5-4tra.dat")
wine_5an_nc_5_4tst <- read.keel("files/keel/noisy/an/nc/nc5/wine-5an-nc/wine-5an-nc-5-4tst.dat")
wine_5an_nc_5_5tra <- read.keel("files/keel/noisy/an/nc/nc5/wine-5an-nc/wine-5an-nc-5-5tra.dat")
wine_5an_nc_5_5tst <- read.keel("files/keel/noisy/an/nc/nc5/wine-5an-nc/wine-5an-nc-5-5tst.dat")

change <- colnames(wine_5an_nc_5_1tra)[colnames(wine_5an_nc_5_1tra) != "Class"]
wine_5an_nc_5_1tra <- wine_5an_nc_5_1tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
wine_5an_nc_5_1tst <- wine_5an_nc_5_1tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
wine_5an_nc_5_2tra <- wine_5an_nc_5_2tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
wine_5an_nc_5_2tst <- wine_5an_nc_5_2tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
wine_5an_nc_5_3tra <- wine_5an_nc_5_3tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
wine_5an_nc_5_3tst <- wine_5an_nc_5_3tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
wine_5an_nc_5_4tra <- wine_5an_nc_5_4tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
wine_5an_nc_5_4tst <- wine_5an_nc_5_4tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
wine_5an_nc_5_5tra <- wine_5an_nc_5_5tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
wine_5an_nc_5_5tst <- wine_5an_nc_5_5tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)

wine_5an_nc_5_1tra <- wine_5an_nc_5_1tra[, c("class", setdiff(colnames(wine_5an_nc_5_1tra), "class"))]
wine_5an_nc_5_1tst <- wine_5an_nc_5_1tst[, c("class", setdiff(colnames(wine_5an_nc_5_1tst), "class"))]
wine_5an_nc_5_2tra <- wine_5an_nc_5_2tra[, c("class", setdiff(colnames(wine_5an_nc_5_2tra), "class"))]
wine_5an_nc_5_2tst <- wine_5an_nc_5_2tst[, c("class", setdiff(colnames(wine_5an_nc_5_2tst), "class"))]
wine_5an_nc_5_3tra <- wine_5an_nc_5_3tra[, c("class", setdiff(colnames(wine_5an_nc_5_3tra), "class"))]
wine_5an_nc_5_3tst <- wine_5an_nc_5_3tst[, c("class", setdiff(colnames(wine_5an_nc_5_3tst), "class"))]
wine_5an_nc_5_4tra <- wine_5an_nc_5_4tra[, c("class", setdiff(colnames(wine_5an_nc_5_4tra), "class"))]
wine_5an_nc_5_4tst <- wine_5an_nc_5_4tst[, c("class", setdiff(colnames(wine_5an_nc_5_4tst), "class"))]
wine_5an_nc_5_5tra <- wine_5an_nc_5_5tra[, c("class", setdiff(colnames(wine_5an_nc_5_5tra), "class"))]
wine_5an_nc_5_5tst <- wine_5an_nc_5_5tst[, c("class", setdiff(colnames(wine_5an_nc_5_5tst), "class"))]

save(wine_5an_nc_5_1tra, wine_5an_nc_5_1tst,
     wine_5an_nc_5_2tra, wine_5an_nc_5_2tst,
     wine_5an_nc_5_3tra, wine_5an_nc_5_3tst,
     wine_5an_nc_5_4tra, wine_5an_nc_5_4tst,
     wine_5an_nc_5_5tra, wine_5an_nc_5_5tst,
     file = "data/wine_5an_nc.RData")


# contraceptive_5an --------------------------------------------------------------

# contraceptive_5an_nc_5_1tra <- read.keel("files/keel/noisy/an/nc/nc5/contraceptive-5an-nc/contraceptive-5an-nc-5-1tra.dat")
# contraceptive_5an_nc_5_1tst <- read.keel("files/keel/noisy/an/nc/nc5/contraceptive-5an-nc/contraceptive-5an-nc-5-1tst.dat")
# contraceptive_5an_nc_5_2tra <- read.keel("files/keel/noisy/an/nc/nc5/contraceptive-5an-nc/contraceptive-5an-nc-5-2tra.dat")
# contraceptive_5an_nc_5_2tst <- read.keel("files/keel/noisy/an/nc/nc5/contraceptive-5an-nc/contraceptive-5an-nc-5-2tst.dat")
# contraceptive_5an_nc_5_3tra <- read.keel("files/keel/noisy/an/nc/nc5/contraceptive-5an-nc/contraceptive-5an-nc-5-3tra.dat")
# contraceptive_5an_nc_5_3tst <- read.keel("files/keel/noisy/an/nc/nc5/contraceptive-5an-nc/contraceptive-5an-nc-5-3tst.dat")
# contraceptive_5an_nc_5_4tra <- read.keel("files/keel/noisy/an/nc/nc5/contraceptive-5an-nc/contraceptive-5an-nc-5-4tra.dat")
# contraceptive_5an_nc_5_4tst <- read.keel("files/keel/noisy/an/nc/nc5/contraceptive-5an-nc/contraceptive-5an-nc-5-4tst.dat")
# contraceptive_5an_nc_5_5tra <- read.keel("files/keel/noisy/an/nc/nc5/contraceptive-5an-nc/contraceptive-5an-nc-5-5tra.dat")
# contraceptive_5an_nc_5_5tst <- read.keel("files/keel/noisy/an/nc/nc5/contraceptive-5an-nc/contraceptive-5an-nc-5-5tst.dat")
#
# change <- colnames(contraceptive_5an_nc_5_1tra)[colnames(contraceptive_5an_nc_5_1tra) != "Contraceptive_method"]
# contraceptive_5an_nc_5_1tra <- contraceptive_5an_nc_5_1tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
#   rename(class = Contraceptive_method)
# contraceptive_5an_nc_5_1tst <- contraceptive_5an_nc_5_1tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
#   rename(class = Contraceptive_method)
# contraceptive_5an_nc_5_2tra <- contraceptive_5an_nc_5_2tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
#   rename(class = Contraceptive_method)
# contraceptive_5an_nc_5_2tst <- contraceptive_5an_nc_5_2tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
#   rename(class = Contraceptive_method)
# contraceptive_5an_nc_5_3tra <- contraceptive_5an_nc_5_3tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
#   rename(class = Contraceptive_method)
# contraceptive_5an_nc_5_3tst <- contraceptive_5an_nc_5_3tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
#   rename(class = Contraceptive_method)
# contraceptive_5an_nc_5_4tra <- contraceptive_5an_nc_5_4tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
#   rename(class = Contraceptive_method)
# contraceptive_5an_nc_5_4tst <- contraceptive_5an_nc_5_4tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
#   rename(class = Contraceptive_method)
# contraceptive_5an_nc_5_5tra <- contraceptive_5an_nc_5_5tra %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
#   rename(class = Contraceptive_method)
# contraceptive_5an_nc_5_5tst <- contraceptive_5an_nc_5_5tst %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
#   rename(class = Contraceptive_method)
#
# contraceptive_5an_nc_5_1tra <- contraceptive_5an_nc_5_1tra[, c("class", setdiff(colnames(contraceptive_5an_nc_5_1tra), "class"))]
# contraceptive_5an_nc_5_1tst <- contraceptive_5an_nc_5_1tst[, c("class", setdiff(colnames(contraceptive_5an_nc_5_1tst), "class"))]
# contraceptive_5an_nc_5_2tra <- contraceptive_5an_nc_5_2tra[, c("class", setdiff(colnames(contraceptive_5an_nc_5_2tra), "class"))]
# contraceptive_5an_nc_5_2tst <- contraceptive_5an_nc_5_2tst[, c("class", setdiff(colnames(contraceptive_5an_nc_5_2tst), "class"))]
# contraceptive_5an_nc_5_3tra <- contraceptive_5an_nc_5_3tra[, c("class", setdiff(colnames(contraceptive_5an_nc_5_3tra), "class"))]
# contraceptive_5an_nc_5_3tst <- contraceptive_5an_nc_5_3tst[, c("class", setdiff(colnames(contraceptive_5an_nc_5_3tst), "class"))]
# contraceptive_5an_nc_5_4tra <- contraceptive_5an_nc_5_4tra[, c("class", setdiff(colnames(contraceptive_5an_nc_5_4tra), "class"))]
# contraceptive_5an_nc_5_4tst <- contraceptive_5an_nc_5_4tst[, c("class", setdiff(colnames(contraceptive_5an_nc_5_4tst), "class"))]
# contraceptive_5an_nc_5_5tra <- contraceptive_5an_nc_5_5tra[, c("class", setdiff(colnames(contraceptive_5an_nc_5_5tra), "class"))]
# contraceptive_5an_nc_5_5tst <- contraceptive_5an_nc_5_5tst[, c("class", setdiff(colnames(contraceptive_5an_nc_5_5tst), "class"))]
#
# save(contraceptive_5an_nc_5_1tra, contraceptive_5an_nc_5_1tst,
#      contraceptive_5an_nc_5_2tra, contraceptive_5an_nc_5_2tst,
#      contraceptive_5an_nc_5_3tra, contraceptive_5an_nc_5_3tst,
#      contraceptive_5an_nc_5_4tra, contraceptive_5an_nc_5_4tst,
#      contraceptive_5an_nc_5_5tra, contraceptive_5an_nc_5_5tst,
#      file = "data/contraceptive_5an_nc.RData")
