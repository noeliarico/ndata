library(tidyverse)
library(caret)
library(foreign)

# Abalone -----------------------------------------------------------------

abalone <- read_csv(file.path("files", "abalone.csv"),
                    col_types = cols(sex = col_factor(NULL)
                                     # the other are numbers
                    ),
                    col_names = c("sex", "length", "diameter", "height",
                                  "whole_weight", "shucked_weight",
                                  "viscera_weight", "shell_weight",
                                  "rings"))

abalone_sex <- abalone %>% rename(class = "sex")

set.seed(123)
mini_abalone_sex <- createDataPartition(abalone_sex$class, p = 0.05, list = FALSE)
mini_abalone_sex <- abalone_sex[mini_abalone_sex,]

save(abalone, abalone_sex, mini_abalone_sex, file = "data/abalone.RData")

# Adult -------------------------------------------------------------------

adult <- read_csv("files/adult.csv",
                  col_names =
                    c("age",
                      "workclass",
                      "fnlwgt",
                      "education",
                      "education_num",
                      "marital_status",
                      "occupation",
                      "relationship",
                      "race",
                      "sex",
                      "capital_gain",
                      "capital_loss",
                      "hours_per_week",
                      "native_country",
                      "class"),
                  col_types = cols(.default = col_factor(),
                                   age = col_number(),
                                   fnlwgt = col_number(),
                                   capital_gain = col_number(),
                                   capital_loss = col_number(),
                                   hours_per_week = col_number()))
adult <- adult[, c("class", setdiff(colnames(adult), "class"))]
adult <- adult %>% mutate(class = fct_relevel(class, ">50K", "<=50K"))
adult_original <- adult
adult$fnlwgt <- NULL

set.seed(123)
mini_adult <- createDataPartition(adult$class, p = 0.01, list = FALSE)
mini_adult <- adult[mini_adult,]

save(adult_original, adult, mini_adult, file = "data/adult.RData")

# Audit risk --------------------------------------------------------------

audit_risk <- read.table(file.path("files", "audit_risk.csv"),
                         header = TRUE,
                         sep = ",")
audit_risk <- audit_risk %>% as_tibble(audit_risk) %>%
  rename(class = Risk) %>%
  mutate(LOCATION_ID = NULL,
         Detection_Risk = NULL,
         class = factor(class))
audit_risk <- audit_risk[, c("class", setdiff(colnames(audit_risk), "class"))]
audit_risk <- audit_risk %>% mutate(class = fct_relevel(class, "1", "0"))

set.seed(123)
mini_audit_risk <- createDataPartition(audit_risk$class, p = 0.3, list = FALSE)
mini_audit_risk <- audit_risk[mini_audit_risk, ]


save(audit_risk, mini_audit_risk, file = "data/audit_risk.RData")

# Bank note ---------------------------------------------------------------

banknote <- read_csv(file.path("files", "bank_note.csv"),
                      col_types = cols(class = col_factor(NULL)),
                      col_names = c("variance",
                                    "skewness",
                                    "curtosis",
                                    "entropy",
                                    "class"))
banknote <- banknote[, c("class", setdiff(colnames(banknote), "class"))]
banknote <- banknote %>% mutate(class = fct_relevel(class, "1", "0"))

set.seed(123)
mini_banknote <- createDataPartition(banknote$class, p = 0.1, list = FALSE)
mini_banknote <- banknote[mini_banknote, ]

save(banknote, mini_banknote, file = "data/banknote.RData")

# Caesarian ---------------------------------------------------------------

caesarian <- read.arff(file.path("files", "caesarian.arff")) %>%
  mutate(Age = as.numeric(as.character(Age)))
colnames(caesarian) <- make.names(colnames(caesarian))
caesarian <- caesarian %>% as_tibble() %>% rename(class = Caesarian)
caesarian <- caesarian[, c("class", setdiff(colnames(caesarian), "class"))]
change <- colnames(caesarian)[colnames(caesarian) != "class"]
caesariann <- caesarian %>% mutate_at(change, function(x) {as.numeric(as.character(x))})

save(caesarian, caesariann, file = "data/caesarian.RData")


# Cpu ---------------------------------------------------------------------

cpu <- read.arff("files/cpu.arff") %>% as_tibble()
cpu <- cpu[, c("class", setdiff(colnames(cpu), "class"))]
cpu_discretized <- cpu
cpu_discretized$class <- (discretize(cpu$class, breaks = 2))

save(cpu, cpu_discretized, file = "data/cpu.RData")

# Contraceptive -----------------------------------------------------------

# ya cargado en imbalance

# Ecoli -------------------------------------------------------------------

ecoli <- read_table(file.path("files", "ecoli.csv"),
                    col_types = cols(class = col_factor(NULL)),
                    col_names = c("sequence", "mcg", "gvh", "lip", "chg",
                                  "aac", "alm1", "alm2", "class")) %>%
  mutate(sequence = NULL)
ecoli <- ecoli %>% as_tibble()
ecoli <- ecoli[, c("class", setdiff(colnames(ecoli), "class"))]

filtered_ecoli <- ecoli %>% filter(!class %in% c("imL", "imS", "imU", "omL")) %>% droplevels()

save(ecoli, filtered_ecoli, file = "data/ecoli.RData")

# EGG eye state -----------------------------------------------------------

egg_eye_state <- read.arff(file.path("files", "eeg_eye_state.arff"))
egg_eye_state <- as_tibble(egg_eye_state) %>% rename(class = eyeDetection)
egg_eye_state <- egg_eye_state[, c("class", setdiff(colnames(egg_eye_state), "class"))]
egg_eye_state <- egg_eye_state %>% mutate(class = fct_relevel(class, "1", "0"))

set.seed(123)
mini_egg_eye_state <- createDataPartition(egg_eye_state$class, p = 0.01, list = FALSE)
mini_egg_eye_state <- egg_eye_state[mini_egg_eye_state, ]

save(egg_eye_state, mini_egg_eye_state, file = "data/egg_eye_state.RData")

# Flags -------------------------------------------------------------------

flags <- read_csv("files/flag.csv",
                  col_names = c("name",
                                "landmass",
                                "zone",
                                "area",
                                "population",
                                "language",
                                "religion",
                                "bars",
                                "stripes",
                                "colours",
                                "red",
                                "green",
                                "blue",
                                "gold",
                                "white",
                                "black",
                                "orange",
                                "mainhue",
                                "circles",
                                "crosses",
                                "saltires",
                                "quarters",
                                "sunstars",
                                "crescent",
                                "triangle",
                                "icon",
                                "animate",
                                "text",
                                "topleft",
                                "botright"),
                  col_types = cols(.default = col_factor(NULL),
                                   area = col_number(),
                                   population = col_number())) %>%
  mutate(name = NULL,
         language = fct_collapse(language, other = c("3","4","5", "6", "7", "9"))) %>%
  rename(class = zone)
flags <- flags[, c("class", setdiff(colnames(flags), "class"))]
save(flags, file = "data/flags.RData")

# Haberman ----------------------------------------------------------------

haberman <- read_csv(file.path("files", "haberman.csv"),
                     col_types = cols(.default = col_double(),
                                      class = col_factor()),
                     col_names = c("age", "year", "nodes", "class"))
haberman <- haberman[, c("class", setdiff(colnames(haberman), "class"))]
haberman <- haberman %>% mutate(class = fct_relevel(class, "2", "1"))
save(haberman, file = "data/haberman.RData")

# Ionosphere --------------------------------------------------------------

ionosphere <- read.csv(file.path("files", "ionosphere.csv"), header = FALSE)
ionosphere <- as_tibble(ionosphere) %>%
                mutate(V1 = as.factor(V1),
                       V2 = as.factor(V2)) %>%
                rename(class = V35)

ionosphere <- ionosphere[, c("class", setdiff(colnames(ionosphere), "class"))]

ionospheren <- ionosphere %>% mutate(V1 = NULL,
                                      V2 = NULL)


save(ionosphere, ionospheren, file = "data/ionosphere.RData")

# Iris --------------------------------------------------------------------

iris <- read_csv(file.path("files", "iris.csv"),
                 col_types = cols(.default = col_double(),
                                  Species = col_factor()),
                 col_names = c("Sepal.Length", "Sepal.Width",
                               "Petal.Length", "Petal.Width",
                               "Species")) %>%
                 rename(class = Species)
iris <- iris[, c("class", setdiff(colnames(iris), "class"))]

save(iris, file = "data/iris.RData")

# Life expectancy ---------------------------------------------------------

life_expectancy <- read_csv(file.path("files", "life_expectancy.csv"),
                            col_types = cols(class = col_factor(NULL)),
                            col_names = c("rank", "country", "overall",
                                          "male", "female", "class"),
                            skip = 1) %>% select(overall, male, female, class)
life_expectancy <- life_expectancy[, c("class", setdiff(colnames(life_expectancy), "class"))]

save(life_expectancy, file = "data/life_expectancy.RData")

# Mammographic Mass -------------------------------------------------------

mammographic_masses_original <- read_csv(file.path("files", "mammographic_masses.csv"),
                                col_types = cols(.default = col_factor(NULL),
                                                 age = col_number()),
                                col_names = c("bi_rads",
                                              "age",
                                              "shape",
                                              "margin",
                                              "density",
                                              "severity"),
                                na = "?") %>%
                            rename(class = severity)
mammographic_masses_original <- mammographic_masses_original[, c("class", setdiff(colnames(mammographic_masses_original), "class"))]
mammographic_masses <- mammographic_masses_original %>% drop_na

change <- colnames(mammographic_masses)[colnames(mammographic_masses) != "class"]
mammographic_massesn <- mammographic_masses %>% mutate_at(change, function(x) {as.numeric(as.character(x))})

set.seed(123)
ind <- createDataPartition(mammographic_masses$class, p = 0.25, list = FALSE)
mini_mammographic_masses <- mammographic_masses[ind,]
mini_mammographic_massesn <- mammographic_masses[ind,]

save(mammographic_masses_original,
     mammographic_masses, mini_mammographic_masses,
     mammographic_massesn, mini_mammographic_massesn,
     file = "data/mammographic_masses.RData")

# Primary tumor -----------------------------------------------------------

primary_tumor_original <- read_csv(file.path("files", "primary_tumor.csv"),
                          col_types = cols(.default = col_factor(NULL)),
                          col_names = FALSE,
                          na = "?") %>%
  rename(class = X1)

primary_tumor <- primary_tumor_original %>% drop_na
change <- colnames(primary_tumor)[colnames(primary_tumor) != "class"]
primary_tumorn <- primary_tumor %>% mutate_at(change, function(x) {as.numeric(as.character(x))})

save(primary_tumor, primary_tumorn, primary_tumor_original, file = "data/primary_tumor.RData")

# Seeds -------------------------------------------------------------------

seeds <- read.table(file.path("files", "seeds.csv"))
colnames(seeds) <- c("area",
                     "perimeter",
                     "compactness",
                     "length_kernel",
                     "width_kernel",
                     "asymmetry_coefficient",
                     "length_kernel_groove",
                     "class")
seeds <- as_tibble(seeds) %>% mutate(class = as.factor(class))
seeds <- seeds[, c("class", setdiff(colnames(seeds), "class"))]

save(seeds, file = "data/seeds.RData")

# Skin --------------------------------------------------------------------

skin <- read.table(file.path("files", "skin.csv"))
colnames(skin) <- c("red", "green", "blue", "class")
skin <- as_tibble(skin) %>% mutate(class = factor(class))
skin <- skin[, c("class", setdiff(colnames(skin), "class"))]

set.seed(123)
mini_skin <- createDataPartition(skin$class, p = 0.001, list = F)
mini_skin <- skin[mini_skin,]

save(skin, mini_skin, file = "data/skin.RData")

# Sonar -------------------------------------------------------------------

sonar <- read.csv(file.path("files", "sonar.csv"), header = FALSE)
sonar <- as_tibble(sonar) %>% rename(class = V61) %>% mutate(class = factor(class))
sonar <- sonar[, c("class", setdiff(colnames(sonar), "class"))]
sonar <- sonar %>% mutate(class = fct_relevel(class, "R", "M"))

save(sonar, file = "data/sonar.RData")

# Statlog (heart) ---------------------------------------------------------

statlog <-
  read_delim(
    file.path("files", "statlog.csv"),
    delim = " ",
    col_names =
      c(
        "age",
        "sex",
        "chest_pain_type",
        "resting_blood_pressure",
        "serum_cholestoral",
        "fasting_blood_sugar",
        "resting_electrocardiographic_results",
        "maximum_heart_rate_achieved",
        "exercise_induced_angina",
        "oldpeak",
        "slope",
        "major_vessels",
        "thal",
        "class"
      ),
    col_types = cols(.default = col_double(),
                     sex = col_factor(NULL),
                     chest_pain_type = col_factor(NULL),
                     slope = col_factor(NULL),
                     fasting_blood_sugar = col_factor(NULL),
                     exercise_induced_angina = col_factor(NULL),
                     resting_electrocardiographic_results = col_factor(NULL),
                     thal = col_factor(NULL),
                     major_vessels = col_factor(NULL),
                     class = col_factor(NULL)
    )
  )
statlog <- statlog[, c("class", setdiff(colnames(statlog), "class"))]

save(statlog, file = "data/statlog.RData")

# Teaching assistant ------------------------------------------------------

teaching_assistant <- read_csv(file.path("files", "teaching_assistant.csv"),
                               col_types = cols(class_size = col_number(),
                                                .default = col_factor(NULL)),
                               col_names = c("native",
                                             "course_instructor",
                                             "course",
                                             "semester",
                                             "class_size",
                                             "score"))

teaching_assistant_score <- teaching_assistant %>% rename(class = score)
teaching_assistant_score <- teaching_assistant_score[, c("class", setdiff(colnames(teaching_assistant_score), "class"))]

teaching_assistant_native <- teaching_assistant %>% rename(class = native)
teaching_assistant_native <- teaching_assistant_native[, c("class", setdiff(colnames(teaching_assistant_native), "class"))]

save(teaching_assistant, teaching_assistant_native, teaching_assistant_score,
     file = "data/teaching_assistant.RData")

# Travel insurance --------------------------------------------------------

travel_insurance_original <- read_csv(file.path("files", "travel_insurance.csv"),
                             col_names = c("agency", "agency_type",
                                           "distribution_channel", "product_name",
                                           "claim", "duration", "destination",
                                           "net_sales", "commision",
                                           "gender", "age"),
                             col_types = cols(.default = col_factor(NULL),
                                              duration = col_number(),
                                              net_sales = col_number(),
                                              commision = col_number(),
                                              age = col_number()),
                             skip = 1) %>%
              rename(class = claim)
travel_insurance_original <- travel_insurance_original[, c("class", setdiff(colnames(travel_insurance_original), "class"))]
travel_insurance_original <- travel_insurance_original %>% mutate(class = fct_relevel(class, "Yes", "No"))

travel_insurance <- travel_insurance_original %>% drop_na

set.seed(123)
mini_travel_insurance <- createDataPartition(travel_insurance$class, p = 0.015, list = FALSE)
mini_travel_insurance <- travel_insurance[mini_travel_insurance,]

save(travel_insurance_original, travel_insurance, mini_travel_insurance,
     file = "data/travel_insurance.RData")

# Vertebral column --------------------------------------------------------

vertebral_column2 <- read.arff(file.path("files", "vetebral_column_2.arff"))
vertebral_column2 <- as_tibble(vertebral_column2)
vertebral_column2 <- vertebral_column2[, c("class", setdiff(colnames(vertebral_column2), "class"))]
vertebral_column2 <- vertebral_column2 %>% mutate(class = fct_relevel(class, "Normal", "Abnormal"))

vertebral_column3 <- read.arff(file.path("files", "vertebral_column_3.arff"))
vertebral_column3 <- as_tibble(vertebral_column3)
vertebral_column3 <- vertebral_column3[, c("class", setdiff(colnames(vertebral_column3), "class"))]

save(vertebral_column2, vertebral_column3, file = "data/vertebral_column.RData")



# Weight, height, gender --------------------------------------------------

weight_height <- read_csv(file.path("files", "weight-height.csv"),
                          col_types = cols(Gender = col_factor())) %>%
                          rename(class = Gender)
weight_height <- weight_height[, c("class", setdiff(colnames(weight_height), "class"))]

set.seed(123)
mini_weight_height <- createDataPartition(weight_height$class, p = 0.02, list = FALSE)
mini_weight_height <- weight_height[mini_weight_height, ]

save(weight_height, mini_weight_height, file = "data/weight_height.RData")


# Waves -------------------------------------------------------------------

waves <- read_csv("files/waves.csv", col_names = FALSE)
waves$X22 <- as.factor(waves$X22)
waves <- waves %>% rename(class = X22)
waves <- waves[, c("class", setdiff(colnames(waves), "class"))]

set.seed(123)
mini_waves <- createDataPartition(waves$class, p = 0.05, list = FALSE)
mini_waves <- waves[mini_waves,]

save(waves, mini_waves, file = "data/waves.RData")

# Wireless Indoor Localization --------------------------------------------

wifi_localization <- read_tsv(file.path("files", "wifi_localization.csv"),
                              col_names = c(paste0("V",1:7), "class"),
                              col_types = cols(class = col_factor(NULL)))
wifi_localization <- wifi_localization[, c("class", setdiff(colnames(wifi_localization), "class"))]

set.seed(123)
mini_wifi_localization <- createDataPartition(wifi_localization$class, p = 0.1, list = FALSE)
mini_wifi_localization <- wifi_localization[mini_wifi_localization,]

save(wifi_localization, mini_wifi_localization, file = "data/wifi_localization.RData")

# Yeast -------------------------------------------------------------------

yeast <- read.table(file.path("files", "yeast.csv"))
colnames(yeast) <-  c("seq", "mcg", "gvh", "alm", "mit", "erl", "pox", "vac", "nuc", "class")
yeast$seq <- NULL
yeast <- as_tibble(yeast)
yeast <- yeast[, c("class", setdiff(colnames(yeast), "class"))]


set.seed(123)
mini_yeast <- createDataPartition(yeast$class, p = 0.1, list = FALSE)
mini_yeast <- yeast[mini_yeast,]

mini_yeast_cc <- mini_yeast
mini_yeast_cc$class <- mini_yeast_cc$class %>% fct_collapse(
  other = c("ERL", "EXC", "ME1", "ME2", "POX", "VAC"),
  CYT = "CYT",
  ME3 = "ME3",
  MIT = "MIT"
)

save(yeast, mini_yeast, mini_yeast_cc, file = "data/yeast.RData")


data_info <- tribble(~name, ~RData,
                     "abalone", "abalone",
                     "abalone_sex", "abalone",
                     "mini_abalone_sex", "abalone",
                     "adult_original", "adult",
                     "adult", "adult",
                     "mini_adult", "adult",
                     "audit_risk", "audit_risk",
                     "mini_audit_risk", "audit_risk",
                     "banknote", "banknote",
                     "mini_banknote", "banknote",
                     "caesarian", "caesarian",
                     "caesarian", "caesariann",
                     "cpu", "cpu",
                     "cpu_discretized", "cpu",
                     "ecoli", "ecoli",
                     "filtered_ecoli", "ecoli",
                     "egg_eye_state", "egg_eye_state",
                     "mini_egg_eye_state", "egg_eye_state",
                     "flags", "flags",
                     "haberman", "haberman",
                     "ionosphere", "ionosphere",
                     "ionospheren", "ionosphere",
                     "iris", "iris",
                     "life_expectancy", "life_expectancy",
                     "mammographic_masses_original", "mammographic_masses",
                     "mammographic_masses", "mammographic_masses",
                     "mini_mammographic_masses", "mammographic_masses",
                     "mammographic_massesn", "mammographic_masses",
                     "mini_mammographic_massesn", "mammographic_masses",
                     "primary_tumor", "primary_tumor",
                     "primary_tumorn", "primary_tumor",
                     "primary_tumor_original", "primary_tumor",
                     "seeds", "seeds",
                     "skin", "skin",
                     "mini_skin", "skin",
                     "sonar", "sonar",
                     "teaching_assistant", "teaching_assistant",
                     "teaching_assistant_score", "teaching_assistant",
                     "teaching_assistant_native", "teaching_assistant",
                     "vertebral_column2","vertebral_column",
                     "vertebral_column3", "vertebral_column",
                     "weight_height", "weight_height",
                     "mini_weight_height", "weight_height",
                     "waves", "waves",
                     "mini_waves", "waves",
                     "wifi_localization", "wifi_localization",
                     "mini_wifi_localization", "wifi_localization",
                     "yeast", "yeast",
                     "mini_yeast", "yeast",
                     "mini_yeast_cc", "yeast"
)
