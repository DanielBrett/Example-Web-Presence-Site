library(ggplot2)

sdata <- read.csv("Coffee-Survey-Results.csv")


ggplot(data = sdata)+geom_bar(mapping = aes(x=coffee.daily))
ggsave("daily-coffee-drinkers.jpg", width = 8, height = 6, dpi = 300, device = "jpeg")

ggplot(data = sdata)+geom_bar(mapping = aes(x=num.cups))+labs(x="Number of Cups Per Day",y="Number of People",title="How Many Coffee's Drunk Per Day")+scale_y_continuous(breaks =c(1,2,3,4,5,6,7,8,9))
ggsave("coffees-per-day.jpg", width = 8, height = 6, dpi = 300, device = "jpeg")

ggplot(data = sdata)+geom_bar(mapping = aes(x=morning))
ggsave("morning-coffee.jpg", width = 8, height = 6, dpi = 300, device = "jpeg")

ggplot(data = sdata)+geom_bar(mapping = aes(x=midday))
ggsave("midday-coffee.jpg", width = 8, height = 6, dpi = 300, device = "jpeg")

ggplot(data = sdata)+geom_bar(mapping = aes(x=evening))
ggsave("evening-coffee.jpg", width = 8, height = 6, dpi = 300, device = "jpeg")

ggplot(data = sdata)+geom_bar(mapping = aes(x=night))
ggsave("night-coffee.jpg", width = 8, height = 6, dpi = 300, device = "jpeg")
