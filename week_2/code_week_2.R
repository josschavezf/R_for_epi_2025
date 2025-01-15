x1 <- 10
x2 <- "a"

x1
x2

x1 <- "a"

x1 <- c(1, 2, 3)
x2 <- c("a", "b", "c")

x1
x2

x1 <- 15:35
x1

x1 <- seq(from = 15, to = 35, by = 2)
x1

vector_1 <- 300

vector_2 <- 100:500
vector_2 <- seq(from = 100, to = 500, by = 1)
vector_2

vector_3 <- c("a", "b", "c", "d", "e")
vector_3

vector_4 <- c("Joselyn", 33, "Irapuato")
vector_4

x_num <- c(1, 2.4, 5)

class(x_num)

x_int <- c(4L, 6L, 8L)
class(x_int)

x_double <- c(3.1, 4.2, 5.0)
x_double
class(x_double)
typeof(x_double)


x_chr <- c("a", "chair", "the window")
x_chr
class(x_chr)

x_fct <- factor("mouse_a", "mouse_b", "mouse_c")
class(x_fct)

x_log <- c(TRUE, FALSE)
class(x_log)

x_experiment <- c(TRUE, FALSE, 23)
x_experiment
class(x_experiment)

x_num
class(x_num)

as.character(x_num)
as.logical(x_num)

x_num <- c(0, 1, 6)
as.logical(x_num)


x_num * 2
x_chr * 2

as.factor(x_chr)

mouse_w <- c(500, 550, NA)
mouse_w2 <- c(502, 555, 498)

log(45)
log(-5)

x_num <- c(3, 4, -5)
class(x_num)

log(x_num)


vector_4[1]
vector_4[3]
vector_4[2:3]

letters
LETTERS

letters[1:5]
LETTERS[1:5]

length(letters)
letters[7:21]

# extract a, d, z
letters[c(1, 4, 26)]

# extract k, o, a
letters[c(11, 15, 1)]


x_num <- seq(from = 50, to = 100, by = 5)
x_num

x_num[1:7]
x_num[4:11]

length(x_num)-7

x_num[(length(x_num)-7):length(x_num)]

x_chr <- letters[1:11]
x_chr

x_chr[c(3, 4, 10)]
