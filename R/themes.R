theme_paper<-function() {
  theme_classic(base_size=18, base_family="Times New Roman") %+replace%
    theme(
      plot.title=element_text(hjust=0.5), 
      panel.background=element_rect(fill="transparent", color=NA),
      legend.background=element_rect(fill="transparent", color=NA),
      axis.line=element_line(color="black"),
      axis.ticks=element_line(color="black"),
      axis.text=element_text(color="black"),
      axis.title=element_text(color="black"),
      legend.text=element_text(color="black"),
      legend.title=element_text(color="black")
    )
}

ggplot() +
  geom_point(data=mpg,aes(x=cty, y=hwy, colour=factor(cyl)))+
  labs(x="City", y="Highway", title="The Number of Highways Miles in Relation to City Miles")+
  theme_paper()

theme_presentation<-function() {
  theme_classic(base_size=30, base_family="Times New Roman") %+replace%
    theme(
      plot.title=element_text(hjust=0.5), 
      plot.background=element_rect(fill="transparent", color=NA),
      panel.background=element_rect(fill="transparent", color=NA),
      panel.border=element_rect(fill="transparent", color=NA),
      legend.background=element_rect(fill="transparent", color=NA),
      axis.line=element_line(color="white"),
      axis.ticks=element_line(color="white"),
      axis.text=element_text(color="white"),
      axis.title=element_text(color="white"),
      legend.text=element_text(color="white"),
      legend.title=element_text(color="white")
    )
}
