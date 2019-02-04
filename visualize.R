source("preprocessing.R")
library(maps)
library(scales)
library(ggplot2)

world <- map_data('world') %>% 
  subset(region != "Antarctica")

plot1 <- ggplot()+
  geom_polygon(data=world, aes(long, lat, group=group), fill="black")+
  geom_point(data=data, aes(LNG, LAT, color=Risk), size=0.15, alpha=0.15, show.legend = FALSE)+
  facet_wrap(~Type, nrow=2)+
  scale_color_manual(values=c("goldenrod1", "firebrick4"))+
  theme_minimal()+
  theme(
    axis.title = element_blank(),
    panel.background = element_rect(fill=alpha("lightblue", 0.3)),
    plot.background = element_rect(fill="#272B30", colour=NA),
    strip.background = element_rect(fill="black"),
    strip.text = element_text(colour = "white"),
    panel.border = element_blank(),
    axis.text = element_text(color = "white")
  )
