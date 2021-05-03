install.packages("ggplot2")
countries <- c('United States','China','India','United Kingdom','Brazil','Germany','Turkey','France','Australia')
doses <- c(213.39, 195.02, 127.13, 43.46, 33.81, 22.94, 20.28, 17.45, 1.65)
 df <- data.frame(countries, doses)
 print(df)
 
p<-ggplot(data=df, aes(x=reorder(countries,doses), y=doses))+
  geom_bar(stat="identity",aes(fill = doses))+ 
  coord_flip()+
  geom_text(aes(label=paste0(doses, "million")), y=200, vjust=-0.3, size=3.5, colour="red")+
  theme_minimal()+
  
 labs(title = "BUSA8090 Assignment 3 Question 2",
 subtitle = "COVID-19 vaccine doses administrated, April 20, 2021",
 caption = "Total number of vaccination doses administrated",
 x = "countries", y = "doses (per million)")

        
