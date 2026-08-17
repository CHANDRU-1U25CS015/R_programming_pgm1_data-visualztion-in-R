library(ggplot2)
You can give students this as a **template** if you want them to fill in the code:

```r
# ============================================================
# GGPlot2 Assignment
# ============================================================

# Load ggplot2
library(ggplot2)

# Dataset
data(mpg)

# ============================================================
# Program 1
# Scatter plot of displ vs hwy with one smooth line
# ============================================================

p1 <- ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth(se = FALSE)

print(p1)


# ============================================================
# Program 2
# Separate smooth lines based on drv
# ============================================================

p2 <- ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth(aes(group = drv), se = FALSE)

print(p2)


# ============================================================
# Program 3
# Colour points and smooth lines according to drv
# ============================================================

p3 <- ggplot(mpg, aes(x = displ, y = hwy, color = drv)) +
  geom_point() +
  geom_smooth(se = FALSE)

print(p3)


# ============================================================
# Program 4
# Colour only the points according to drv
# ============================================================

p4 <- ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(color = drv)) +
  geom_smooth(se = FALSE)

print(p4)


# ============================================================
# Assignment completed
# ============================================================

cat("All four ggplot2 programs executed successfully.\n")
