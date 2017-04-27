library(plotly)
library(dplyr)

df <- read.csv("https://raw.githubusercontent.com/plotly/datasets/master/2011_us_ag_exports.csv")


p <- plot_ly(df, labels = ~state, values = ~total.exports, type = 'pie', 
             textposition = 'inside', textinfo = 'label+percent', insidetextfont = list(color = '#FFFFFF'),
             hoverinfo = 'text',
             marker = list(colors = colors,
                           line = list(color = '#FFFFFF', width = 1)),
             #The 'pull' attribute can also be used to create space between the sectors
             showlegend = FALSE) %>% 
          layout(title = 'United States Total Exports By State',
            xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
            yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

p

library(plotly)
p <- plot_ly(midwest, x = ~percollege, color = ~state, type = "box")
p