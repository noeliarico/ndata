data <- tribble(~a, ~b, ~c,
                "green", 1, "a",
                "green", 9, "b",
                "yellow", 5, "a",
                "yellow", 10, "a",
                "red", 5, "b") %>%
  mutate(a = factor(a),
         c = factor(c))

daisy(data, metric = "gower")
# entre 1 y 3
mean(c(1, (9-5)/9, 0))
