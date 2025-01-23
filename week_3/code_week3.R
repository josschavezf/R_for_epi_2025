x <- c(1, 3, 10)

x
class(x)
length(x)
names(x)

x <- c("number_a" = 1, "number_b" = 3, "number_c" = 10)
x

names(x)

# extract the number 3
x[2]
x["number_b"]

# extract the number 3 and 10
x[c(2,3)]
x[c("number_b", "number_c")]

# extract the numbers 10 and 1
x[c(3, 1)]
x[c("number_c", "number_a")]

letters
names(letters)

x_letters <- letters
names(x_letters)
x_letters

names(x_letters) <- x_letters
x_letters

x_letters[1]
x_letters["a"]

# extract letters c, j, q
x_letters[c("c", "j", "q")]

# from x_letters extract h, o, b
x_letters[c("h", "o", "b")]


animals <- c("birds" = 20,
             "horses" = 5,
             "bats" = 100,
             "lion" = 2,
             "tigers" = 4)

# get the number of bats
animals[c("bats")]
animals["bats"]

# get the number of birds and tigers
animals[c("birds", "tigers")]

# get the name of the animal with the smallest number 
# (use the function min())
class(animals)
min(animals)

animals == 2

animals[animals == 2]


animals == min(animals)
animals[animals == min(animals)]

x

x[x == 3]

x[x == 10]

# extract all the numbers higher than 2
x[x > 2]


x <- 1:10

x < 5

x[x < 5]

x <- 1:100

# extract all the numbers greater than 15
x[x > 15]

# extract the number 55
x[x == 55]

# extract the numbers lower or equal to 60 (<=) le (>=) he
x[x <= 60]


x <- c("a", "a", "b", "c", "c", "c")
x

x == "c"

x[x == "c"]

# get all the elements equal to b and c
x %in% c("b", "c")

x[x %in% c("b", "c")]

# get all the elements equal to a or b
x[x %in% c("a", "b")]

animals_names <- names(animals)
animals_names

# using conditionals, from animal_names extract horses
animals_names[animals_names %in% c("horses")] 
animals_names[animals_names == "horses"]

# using conditionals, from animal_names extract bats and birds
animals_names[animals_names %in% c("bats", "birds")]

x <- c("a", "b", "c")
x

length(x)
x[4] <- "d"
x

x <- c(x, "e")
x

x <- x[-2]
x

fruits <- c("apples" = 1, 
            "cherries" = 10,
            "mangos" = 7)

fruits <- c(fruits, "strawberry" = 1)
fruits

fruits <- fruits[-2]
fruits

fruits[!names(fruits) == "apples"]

# remove apples and mangos
fruits[!names(fruits) %in% c("apples", "mangos")]

fruits <- fruits[!names(fruits) %in% c("apples", "mangos")]
fruits

fruits

# replacing a value
fruits[2] <- 2
fruits

fruits[2] <- 1
names(fruits)[2] <- "watermelon"
fruits

fruits <- c("strawberries" = 10, fruits)
fruits

x <- c(1, 3, 0, 0)
x

# replace all the 0 with a 10
x[x == 0] <- 10
x

x <- c(5, 4, NA, NA, 5)
x

# replace all NA's with a 0
x[is.na(x)] <- 0
x
