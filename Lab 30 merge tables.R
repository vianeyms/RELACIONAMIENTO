library(data.table)

choose.files()

green.products<-read.csv("C:\\Users\\Vianey\\Downloads\\green products.csv")
all.products<- read.csv("C:\\Users\\Vianey\\Downloads\\green products.csv")

green.products<- as.data.table(green.products)
all.products<- as.data.table(all.products)

#merge

merge.allproducts = merge(all.products, green.products, by="product_code")

merge.full = merge(all.products, green.products, by="product_code", all.x = T)

write.csv(merge.full, file = "merge.full.csv")


