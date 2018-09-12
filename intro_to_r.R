# Q1
birthday <- 04271993 
print(birthday)
find("birthday")
print(birthday^(0.25))
print(log10(birthday))
print(birthday %% 27)
first_10 <- c(1:10)
print(sum(first_10^3))
#Q2
rev_alpha <- seq(from = 520, to = 1000, by = 30)
alpha <- rev(rev_alpha)
beta <- seq(from = 50, to = 210, by = 10)
print(alpha)
print(beta)
product = alpha*beta
print(sum(product))
print(product)
max_element = max(product)
print(max_element)
print(which.max(product))
less_than_75000 <- sum(product < 75000) 
print(less_than_75000)
#Q3 
set.seed(birthday)
x <- rexp(10000, 2)
y <- rexp(10000, 1)
print(typeof(x))
print(typeof(y))
sum_of_x_y = x + y 
z = x / sum_of_x_y
print(z)
custom_z <- which(z > 0.5)
new_x = x[custom_z]
print(mean(new_x))
# Q4 
matrix <- matrix (c(0, 0, 0, 0, 1, 0, 0, 0, 1, 1,0,0,1,2,1,0,1,3,3,1,1,4,6,4,1), nrow = 5, ncol = 5, byrow = TRUE,
                dimnames = list(c("A", "B", "C", "D","E"),
                                c("Alpha", "Beta", "Gamma", "Delta","Epsilon")))
print(matrix)

updated_matrix <- matrix[c("B","D"),"Epsilon",drop=FALSE]
print(updated_matrix)
print(dim(updated_matrix))

inv_matrix <- solve(matrix)
print(inv_matrix)

#Q5 

grades <- c(
  2, 1, 2, 3, 1, 3, 2, 2, 2, 1, 3, 1, 3, 3, 2, 
  1, 2, 1, 2, 3, 3, 2, 1, 2, 2, 3, 3, 2, 3, 1, 
  1, 2, 4, 1, 3, 3, 2, 1, 2, 2, 1, 1, 3, 2, 2, 
  1, 2, 2, 3, 2, 2, 1, 2, 3, 3, 2, 3, 3, 1, 2, 
  3, 3, 3, 1, 1, 2, 4, 1, 2, 1, 2, 2, 3, 2, 2 )
string_labels = c('F','P','HP','DS')
number_labels = c(4,3,2,1)
factor_rv <- factor(grades,number_labels,string_labels,ordered = TRUE)
print(factor_rv)
pie(table(factor_rv))

#Q6 
x <- c(
  0.00, 0.25, 0.50, 0.75, 1.00, 1.25, 1.50,
  1.75, 2.00, 2.25, 2.50, 2.75, 3.00, 3.25, 3.50,
  3.75, 4.00, 4.25, 4.50, 4.75, 5.00, 5.25, 5.50, 5.75, 6.00, 6.25)


y <- c(
  0.00,  0.25,  0.48,  0.68,  0.84,  0.95,  
  1.00,  0.98,  0.91,  0.78,  0.60,  0.38,
  0.14, -0.11, -0.35, -0.57, -0.76, -0.89,
  -0.98, -1.00, -0.96, -0.86, -0.71, -0.51,
  -0.28, -0.03)
plot(x,y)

#Q7
set.seed(birthday)
my.list <- list(G = c(rnorm(10)), H = matrix(rnorm(100),ncol=10), 
                GAMMA = list(ALPHA = matrix(rnorm(81),ncol=9), BETA = matrix(rnorm(81),ncol=9)))

H_matrix <- my.list[['H']]
print(class(H_matrix))
print(H_matrix)
print(my.list[['H']][3,7])
print( my.list$H[[3,7]])
gamma_list <- my.list[["GAMMA"]]
alpha_matrix <- gamma_list[['ALPHA']]
beta_matrix <- gamma_list[['BETA']]
print(class(alpha_matrix))
print(class(beta_matrix))
product_matrix <- (alpha_matrix %*% beta_matrix)
print(sum(product_matrix))
names(my.list)[1] <- "Y" # Overwrite a nameprint(names(my.list))
print(names(my.list))

#Q8 
set.seed(birthday)
last_matrix <- matrix(rnorm(225000),ncol=225)
means <- apply(last_matrix,1,mean)
print(means)
print(sd(means))

#Q9  
gala.data <- read.csv(file="http://mathmba.com/richardw/gala.csv")
head(gala.data,n=3)
colnames(gala.data)[4] <- "Most Liked"
most_liked_strings <- tolower(gala.data$`Most Liked`)

updated_strings = strsplit(most_liked_strings, " ")
words = unlist(updated_strings)

print(class(words))
print(is.vector((words)))
sorted_words = sort(table(words), decreasing=TRUE)


