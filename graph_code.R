install.packages("readxl")
library("readxl")
install.packages("ggplot2")
library("ggplot2")
install.packages("scales")
library("scales")

require(readxl)
require(ggplot2)
require(scales)

num = read_excel("C:/Users/ASUS/Desktop/Dengue/Data/graph.xlsx")
num
east = read_excel("C:/Users/ASUS/Desktop/Dengue/Data/graph.xlsx" , sheet="east")
east
wobkk = read_excel("C:/Users/ASUS/Desktop/Dengue/Data/graph.xlsx" , sheet="without BKK")
wobkk
ct = read_excel("C:/Users/ASUS/Desktop/Dengue/Data/graph.xlsx" , sheet="central")
ct

---------------pic1 Line Chart--------------------------------------------------
p = ggplot(data = num, aes(x=Date, y=Cases)) + geom_line(aes(colour=Province),size = 1)+ theme_classic() + scale_x_datetime(breaks = date_breaks("1 month"),labels = date_format("%m-%y"))+ theme(axis.text.x = element_text(angle = 60, vjust = 0.5, hjust=1))
p + ggtitle("Spaghetti Plot of Cases") + xlab("\nMonth") + theme(plot.title = element_text(hjust = 0.5, face = 'bold', size = 25)) 
p
---------------pic2 Line Chart split by Region----------------------------------
p = ggplot(data = num, aes(x=Date, y=Cases)) + geom_line(aes(colour=Province),size = 1)+theme_classic() + ggtitle("Spaghetti Plot Split by Region") + theme(plot.title = element_text(hjust = 0.5, face = 'bold', size = 25)) 
p + facet_grid(cols = vars(Region))
p

---------------pic3 Scatter Plot(Cases & Temp)----------------------------------
p = ggplot(data = num, aes(x=Temp, y=Cases)) + geom_point(aes(colour=Province),size = 4.5,alpha = 0.5, position = "jitter")+ geom_hline(yintercept = meanall, col = "red", size = 1,alpha=0.5) +theme_classic()+geom_smooth()+ ggtitle("Scatter Plot Cases & Temp") + xlab("Temperature (Degree Celsius)")+ theme(plot.title = element_text(hjust = 0.5, face = 'bold', size = 25)) 
p

---------------pic4 Scatter Plot(Cases & Rainfall)------------------------------
p = ggplot(data = num, aes(x=Rainfall, y=Cases)) + geom_point(aes(colour=Province),size = 4.5,alpha = 0.5, position = "jitter")+ geom_hline(yintercept = meanall, col = "red", size = 1)+theme_classic()+geom_smooth()+ggtitle("Scatter Plot Cases & Rainfall")+ xlab("Rainfall (ml)")+ theme(plot.title = element_text(hjust = 0.5, face = 'bold', size = 25))
p

---------------pic5 Scatter Plot(Cases & Population)----------------------------
p = ggplot(data = num, aes(x=Population, y=Cases)) + geom_point(aes(colour=Province),size = 4.5,alpha = 0.5, position = "jitter")+ geom_hline(yintercept = meanall, col = "red", size = 1,alpha = 0.5)+theme_classic()+geom_smooth()+ggtitle("Scatter Plot Cases & Population")+ theme(plot.title = element_text(hjust = 0.5, face = 'bold', size = 25))
p

---------------pic6 Scatter Plot(Cases & Area)----------------------------------
p = ggplot(data = num, aes(x=Area, y=Cases)) + geom_point(aes(colour=Province),size = 4.5,alpha = 0.5, position = "jitter")+ geom_hline(yintercept = meanall, col = "red", size = 1 , alpha = 0.5)+theme_classic()+geom_smooth()+ggtitle("Scatter Plot Cases & Area")+ xlab("Area (square kilometre)") + theme(plot.title = element_text(hjust = 0.5, face = 'bold', size = 25))
p

---------------pic7 Scatter Plot(Cases & Number of Hospital)--------------------
p = ggplot(data = num, aes(x=NoH, y=Cases)) + geom_point(aes(colour=Province),size = 4.5,alpha = 0.5, position = "jitter")+ geom_hline(yintercept = meanall, col = "red", size = 1,alpha=0.5)+theme_classic()+geom_smooth()+ggtitle("Scatter Plot Cases & Hospital")+ xlab("Number of Hospital") + theme(plot.title = element_text(hjust = 0.5, face = 'bold', size = 25))
p
