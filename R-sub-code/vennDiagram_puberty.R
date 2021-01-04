library(VennDiagram)
#girl
draw.quintuple.venn(
area1 = 40242,
area2 = 32155,
area3 = 55230,
area4 = 28237,
area5 = 18108,
n12 = 28289,
n13 = 36056,
n14 = 24047,
n15 = 16772,
n23 = 30300,
n24 = 20852,
n25 = 15671,
n34 = 25391,
n35 = 16889,
n45 = 14382,
n123 =27490, 
n124 = 20283, 
n125 = 15409, 
n134 = 23208,
n135 = 16318, 
n145 = 14160, 
n234 = 20594, 
n235 = 15446, 
n245 = 13601, 
n345 = 14175, 
n1234 = 20101, 
n1235 = 15260,
n1245 = 13535, 
n1345 = 14038, 
n2345 = 13541, 
n12345 = 13487,

category = c("Body hair growth","Breast development","Menarche","Skin change","Growth spurt"),
cat.pos = c(0,310, 215, 145, 50), direct.area=FALSE,rotation.degree=15,
fill = NULL,
lty = "solid",
cex=1,
cat.cex=1,fontfamily ="Arial",main.fontfamily="serif",
Scaled=TRUE
)
#gray.colors(5, start = 0.1, end = 0.8, gamma = 1.5, alpha = 0.5)


draw.triple.venn (
area1 =370,
area2 = 304,
area3 = 210,
n12 = 23,
n13 = 19,
n23 = 12,
n123 = 3, 

category = c("min_girl","max_girl","length_girl"),
cat.pos = c(-40,40,180), direct.area=FALSE,rotation.degree=0,
fill = NULL,
lty = "solid",
cex=1,
cat.cex=1,
Scaled=TRUE
)

#boy
draw.quintuple.venn(
area1 =1769,
area2 = 2524,
area3 = 2217,
area4 = 901,
area5 = 534,
n12 = 1578,
n13 = 1531,
n14 = 688,
n15 = 497,
n23 = 1890,
n24 = 767,
n25 = 511,
n34 = 752,
n35 = 509,
n45 = 315,
n123 = 1456, 
n124 = 667, 
n125 = 488, 
n134 = 669,
n135 = 488, 
n145 = 312, 
n234 = 719, 
n235 = 501, 
n245 = 314, 
n345 = 315, 
n1234 = 654, 
n1235 = 483,
n1245 = 311, 
n1345 = 312, 
n2345 = 314, 
n12345 = 311,

category = c("Body hair growth","Facial hair growth","Deepening of the voice","Skin change","Growth spurt"),
cat.pos = c(0,310, 215, 145, 50), direct.area=FALSE,rotation.degree=15,
fill = NULL, #gray.colors(5, start = 0.1, end = 0.8, gamma = 1.5, alpha = 0.5),
lty = "solid",
cex=1,
cat.cex=1,fontfamily ="Arial",main.fontfamily="serif",
Scaled=TRUE
)


draw.triple.venn (
area1 =225,
area2 = 217,
area3 = 288,
n12 = 0,
n13 = 32,
n23 = 8,
n123 = 0, 

category = c("min_boy","max_boy","length_boy"),
cat.pos = c(-40,40,180), direct.area=FALSE,rotation.degree=0,
fill = NULL,
lty = "solid",
cex=1,
cat.cex=1,
Scaled=TRUE
)


#Female

draw.triple.venn (
area1 =63019,
area2 = 13487,
area3 = 629,
n12 = 13487,
n13 = 273,
n23 = 112,
n123 = 112, 

category = c("IoW (any pubertal event)","IoW (all pubertal events)","Almstrup or Thompson"),
cat.pos = c(-40,40,180), direct.area=FALSE,rotation.degree=0,
fill = NULL,
lty = "solid",
cex=2,
cat.cex=2,
Scaled=TRUE,
rotation=2
)

draw.triple.venn (
area1 =3072,
area2 = 311,
area3 = 425,
n12 = 311,
n13 = 67,
n23 = 10,
n123 = 10, 

category = c("IoW (any pubertal event)","IoW (all pubertal events)","Almstrup or Thompson"),
cat.pos = c(-40,40,180), direct.area=FALSE,rotation.degree=0,
fill = NULL,
lty = "solid",
cex=2,
cat.cex=2,
Scaled=TRUE,
rotation=2
)


# ggVennDiagram####
library(ggVennDiagram)
setwd("/Users/NganPham/OneDrive - The University of Memphis/Temp files")
s1 <- read.csv('NN.csv', header = F)
s2 <- read.csv('NY.csv', header = F)
s3 <- read.csv('YN.csv', header = F)
s4 <- read.csv('YY.csv', header = F)
mp <- list(NN=s1[,1],Nmat_Ypat=s2[,1],Ymat_Npat=s3[,1],YY=s4[,1])
ggVennDiagram(mp, category.names = names(mp), label="count", label_alpha = 0, lty="solid", color = "black") +
  guides(fill=FALSE) +
  scale_fill_gradient(low="white",high = "darkgray")





