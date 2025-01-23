### Introduction to Epidemiology Data Analysis with R. 

### Introduction to coding with R. Part II.

# Assignment week 3: 


## Let's create a vector that contains the weight of three patients:

patients_weight <- c("John" = 198, "Andrea" = 165, "Will" = 150)

### 1) Use the patient’s name to get the weight of John and Will
patients_weight[c("John", "Will")]

### 2) Use a logical evaluation to select patients with 
### a weight greater than 155 pounds
patients_weight[patients_weight > 155]

### 3) Remove Will from the vector
patients_weight <- patients_weight[-3]

### 4) Add a new patient to the vector
patients_weight[3] <- 170 # or:
patients_weight <- c(patients_weight, "Lauren" = 170) # or:
patients_weight["Lauren"] = 170

### 5) Replace John's weight with a different number
patients_weight["John"] = 200

