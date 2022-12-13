# Nomor 1
x <- c(78,75,67,77,70,72,78,74,77)
y <- c(100,95,70,90,90,90,89,90,100)
d <- y-x
#a
sd <- sd(d)
print(sd)
#b
t.test(y,x,alternative="two.sided",paired=TRUE)$p.value

# Nomor 2
miu <- 20000
x <- 23500
s <- 3900
n <- 100
library(BSDA)
tsum.test(mean.x=x,s.x=s,n.x=n,mu=miu,alternative = "greater")
qnorm(p=0.05,mean=0,sd=1,lower.tail = FALSE)

# Nomor 3
#b
tsum.test(mean.x=3.64,s.x=1.67,n.x=19,mean.y=2.79,s.y=1.32,n.y=27,alternative="two.sided",var.equal=TRUE,conf.level = 0.95)
#c
plotDist(dist = 't', df = 2, col = 'Red')
#d
qt(p=0.025,df=44,lower.tail = TRUE)
qt(p=0.025,df=44,lower.tail = FALSE)

# Nomor 4
Kucing <- read.table("D:\\DataKucing.txt",header=TRUE)

Kucing$Group <- as.factor(Kucing$Group)
Kucing$Group <- factor(Kucing$Group, labels=c("oren","hitam","putih"))
#a
Group1 <- subset(Kucing, Group=="oren")
Group2 <- subset(Kucing, Group=="hitam")
Group3 <- subset(Kucing, Group=="putih")
qqnorm(Group1$Length)
qqline(Group1$Length)
qqnorm(Group2$Length)
qqline(Group2$Length)
qqnorm(Group3$Length)
qqline(Group3$Length)
#b
bartlett.test(Length~Group, data = Kucing)
#c
model1 = lm(Length~Group, data = Kucing)
anova(model1)
#e
TukeyHSD(aov(model1))
#f
install.packages("ggplot2")
library("ggplot2")
ggplot(Kucing, aes(x = Group, y = Length)) +
geom_boxplot(color = c("#00AFBB", "#E7B800", "#FC4E07")) +
scale_x_discrete() + xlab("Group") + ylab("Length (cm)")

#Nomor 7
GTL <- read.csv(file = "D:\\GTL.csv")
head(GTL)
str(GTL)
#a
qplot(x = Temp, y = Light, geom = "point", data = GTL) + facet_grid(.~Glass, labeller = label_both)
#b
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp <- as.factor(GTL$Temp)
str(GTL)
anova <- aov(Light ~ Glass*Temp, data = GTL)
summary(anova)
#c
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean = mean(Light), sd = sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)
#d
tukey <- TukeyHSD(anova)
print(tukey)
#e
library(multcompView) 
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)
cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)