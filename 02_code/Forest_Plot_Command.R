library(ggplot2)
library(dplyr)

# -----------------------------------------------------
# Import and read you csv file
# -----------------------------------------------------
df <- read.csv(file.choose())


# -----------------------------------------------------
# Fancy Forest Plot (NO p-value)
# -----------------------------------------------------
ggplot(df, aes(x = gene, y = HR)) +
  geom_point(size = 4, color = "black", fill = "steelblue", shape = 21) +
  geom_errorbar(aes(ymin = lower, ymax = upper),
                width = 0.15, linewidth = 1) +
  geom_hline(yintercept = 1, linetype = "dashed",
             color = "red", linewidth = 1) +
  coord_flip() +
  theme_minimal(base_size = 14) +
  theme(
    panel.grid.minor = element_blank(),
    panel.grid.major.y = element_blank(),
    axis.text.y = element_text(face = "bold", size = 12),
    axis.text.x = element_text(size = 12),
    plot.title = element_text(face = "bold", size = 16)
  ) +
  labs(
    title = "Forest Plot of 20 Genes (HR with 95% CI)",
    y = "Hazard Ratio (HR)",
    x = ""
  )
