#CORRELLATION MATRIX OF INBUILT DATASET IN R..MTCARS.

# Correlogram in R
# required packages
install.packages("corrplot")
library(corrplot)
###########################################################
# Read dataset from built-in datasets
###########################################################
mtcars
head(mtcars)
###########################################################
#correlation matrix M
###########################################################
M<-cor(mtcars)
M
head(M)
head(round(M,2))
###########################################################
#visualizing correlogram
###########################################################
#as circle
corrplot(M, method="circle")

# as pie
corrplot(M, method="pie")

# as colour
corrplot(M, method="color")

# as number
corrplot(M, method="number")

# upper triangular matrix
corrplot(M, type="upper")

# lower triangular matrix
corrplot(M, type="lower")

# Using different color spectrum
col1<- colorRampPalette(c("red", "white", "blue"))(20);col1
corrplot(M, type="upper", col = col1)

# Change background color to lightblue
corrplot(M, method="pie",type="lower",col = c("black", "white"),
         bg = "lightblue")
corrplot(M, method="circle",type="upper",col = col1,
         bg = "lightblue")

has context menu
