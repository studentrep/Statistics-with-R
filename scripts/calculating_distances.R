#March 1st, 2021 lecture
#Distances (continued)
#script for calculating distances of a 5 x 5 matrix

#c stands for concatenate
u1 = c(5,6,1,9) 
u2 = c(2,4,3,1)
u3 = c(1,3,18,1)
u4 = c(8,10,1,2)
u5 = c(35,12,2,2)

#indicates that each of the above vectors is a row in a data matrix
#rbind() asks R to bind the rows (treat them as rows of a data matrix) and store them into an object called "data"
data = rbind(u1,u2,u3,u4,u5) 

#Calculating distances
#dist() is the command for computing distances

#Manhattan/City Block distance
d.mat = dist(data,"manhattan")

#Lagrange distance
#use the word "maximum" to specify that you want to calculate the Lagrange distance
#considers the largest absolute difference between each pair of variable values
#according to the properties of the Minkowski distances, we can also observe that the values of the Lagrange distance are smaller
#than those of the Manhattan/city block distance because the distances decrease as the variable k in the Minkowski formula increases
d.mat = dist(data,"maximum")

#Euclidean distance
d.mat = dist(data,"euclidean") #can also write dist(data), because the euclidean distance is the default distance in R (it's the most commonly used distance)
d.mat = round(dist(data,"euclidean"),2) #rounds values in the matrix such that there are two digits after the decimal

#Canberra distance
d.mat = dist(data,"canberra")
d.mat = round(dist(data,"canberra"),2) #rounds values in the matrix such that there are two digits after the decimal



#GENERAL NOTES
#rbind() treats vectors as row vectors, while cbind() treats them as column vectors
#if we use cbind and then try to compute the distances as we did above on the resulting matrix, we will get different results

#rownames() and colnames() functions
#when you work with data from outside sources, you might want to know the names of the rows or columns
#rowsnames() and colnames() (respectively) will give you this information