# Exercise 2: advanced ggplot2 practice

# Install and load the `ggplot2` package
#install.packages('ggplot2')
library("ggplot2")

# For this exercise you will again be working with the `diamonds` data set.
# Use `?diamonds` to review details about this data set
?diamonds

## Scales

# Draw a "boxplot" (with `geom_boxplot`) for the diamond's price (y) by color (x)
ggplot(data = diamonds_sample) +
  geom_boxplot(mapping = ase(x = color, y = price))

# This has a lot of outliers, making it harder to read. To fix this, draw the 
# same plot but with a _logarithmic_ scale for the y axis.
ggplot(data = diamonds_sample) +
  geom_boxplot(mapping = ase(x = color, y = price)) +
  scale_y_log10()

# For another version, draw the same plot but with `violin` geometry instead of 
# `boxplot` geometry!
# How does the logarithmic scale change the data presentation?
ggplot(data = diamonds_sample) +
  geom_violin(mapping = ase(x = color, y = price)) +
  scale_y_log10()

# Another interesting plot: draw a plot of the diamonds price (y) by carat (x), 
# using a heatmap of 2d bins (geom_bin2d)
# What happens when you make the x and y channels scale logarithmically?
ggplot(data = diamonds_sample) +
  geom_bin2d(mapping = ase(x = carat, y = price)) +
  scale_x_log10() +
  scale_y_log10()

# Draw a scatter plot for the diamonds price (y) by carat (x). Color each point
# by the clarity (Remember, this will take a while. Use a sample of the diamonds 
# for faster results)
ggplot(data = diamonds_sample) +
  geom_point(mapping = ase(x = carat, y = price, color = clarity)) +
  scale_color_brewer(palette = "Purples", direction = -1)

# Change the color of the previous plot using a ColorBrewer scale of your choice. 
# What looks nice?


## Facets

# Take the scatter plot of price by carat data (colored by clarity) and add 
# _facets_ based on the diamond's `color`
ggplot(data = diamonds_sample) +
  geom_point(mapping = ase(x = carat, y = price, color = clarity)) +
  facet_wrap(-color)


## Saving Plots

# Use the `ggsave()` function to save the current (recent) plot to disk.
# Name the output file "my-plot.png".
# Make sure you've set the working directory!!

