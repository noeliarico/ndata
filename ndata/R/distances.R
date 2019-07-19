points <- tribble(~ x, ~ y,
                  0, 0,
                  3, 0,
                  2, 1,
                  1, 2,
                  0, 3,
                  2, 2,
                 #-1, -sqrt(7)) %>%
                 -2, -2) %>%
  mutate(name = LETTERS[1:n()])
ggplot() +
  scale_x_continuous(limits = c(-4, 4), breaks = -4:4) +
  scale_y_continuous(limits = c(-4, 4), breaks = -4:4) +
  coord_fixed() +
  geom_circle(aes(x0 = 0, y0 = 0, r = 3),  color="red") +
  geom_circle(aes(x0 = 0, y0 = 0, r = sqrt(8)),  color="red") +
  geom_circle(aes(x0 = 0, y0 = 0, r = sqrt(5)),  color="red") +

  geom_rect(aes(xmin=-2, ymin=-2, xmax=2, ymax=2), fill = "black", color="green", alpha=0) +
  geom_rect(aes(xmin=-3, ymin=-3, xmax=3, ymax=3), fill = "black", color="green", alpha=0) +

  #geom_rect(aes(xmin=-2, ymin=-2, xmax=2, ymax=2), fill = "black", color="green", alpha=0) +
  geom_polygon(aes(x=c(-3,0,3,0), y = c(0,3,0,-3)), fill = "black", color="blue", alpha=0) +
  geom_polygon(aes(x=c(-4,0,4,0), y = c(0,4,0,-4)), fill = "black", color="blue", alpha=0) +
  geom_point(aes(x, y), data = points, size = 5) +
  geom_text(aes(x, y, label = name), data = points, color = "white") +
  theme_light() +
  xlab("x") +
  ylab("y")

