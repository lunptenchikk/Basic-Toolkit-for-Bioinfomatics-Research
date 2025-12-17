On the very beginning, we add libraries, that are obligatory for us(dplyr for median and ggplot2).

We're creating new dataframe median_lines for median values, that're grouped by country. Next for each
coutry we count median_deaths and drop grouping(as it was mentioned by me in previous assignment).

The result of median_lines looks like this: coutry | median_deaths(one line per country)

Next, using ggplot we are visualizing it. aes(x = date, y = deaths) means, that we say, that on x axis
will be data, on y - deaths.

In geom_line we make a line that connects all dots on the plot.
In geom_hline we add horizontal median lines from another dataframe. The logic is the same.
aes(yintersect = median_deaths) means, that we are making this line on the median level.
linetype = "dashed" was chosen by me in order to make it more visible and good looking.

Using facet_wrap(~ country, scales = "free_y") we are making mini-plots for each country, and every
coutry will have it's own y-axis("free_y").

labs is labels, so it's easy to understand, that here we're attaching tags on our plots.

At the end, we use minimal theme to make our plots laconic, as they should be and presenting them.
Thank you!
