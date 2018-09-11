# Create a vector of 100 numbers
# Set 10 of these to NA (random)
# Print the locations of the missing values

v1 <- sample(1:20,100,replace = T)

na_locs <- sample(1:100,10)

v1[na_locs] <- NA

locs <- which(is.na(v1))

print(sum(v1))
print(sum(v1,na.rm = T))

