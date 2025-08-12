# Making vectors

dogs <- c("teddy", "khora", "waffle", "banjo")
typeof(dogs)
class(dogs)

weights <- c(50, 55, 25, 35)
typeof(weights)

#is the above because they're each 2 digits?

class(weights)

#interger vector (needs the L)
dog_age <- c(5L, 6L, 1L, 7L)
typeof(dog_age
      )
class(dog_age)
is.numeric(dog_age
           )
dog_info <- c("teddy", 50, 5L)
dog_info
typeof(dog_info)
class(dog_info)
is.character(dog_info)

# Named elements
dog_food <- c(teddy = "purina", khora = "alpo", waffle = "fancy feast", banjo = "blue diamond")
dog_food
class(dog_food)
typeof(dog_food)

# Accessing bits of vectors
dog_food[2
         ]
dog_food["khora"]
# create a vector of car colors
cars <- c("red", "orange", "white", "blue", "green", "silver", "black")
cars[2:4]


# warm-up for loops
i <- 4
cars[i]
i <- seq(1:3)
cars[1:3]

cars[3] <- "BURRITOS!"
cars
# Matrices
fish_size <- matrix(c(0.8, 1.2, 0.4, 0.9), ncol = 2, nrow = 2, byrow = FALSE)
fish_size

typeof(fish_size)
class(fish_size)
dog_walk <- matrix(c("teddy", 5, "khora", 10), ncol = 2, nrow = 2, byrow = FALSE)
dog_walk
class(dog_walk)
typeof(dog_walk)

#Lists
urchins <- list(c("blue"), 
                c(1,2,3),
                c("a cat", "a dog"), 5L)

# accessing data in a list
# indexing into vector

urchins[2]


#naming list
tacos <- list(topping = c("onion", "cilantro", "guacamole"), filling = c("beans", "meat", "veggie"), price = c(6.75, 8.25, 9.50))
tacos[[2]]
tacos$filling

# data frames (fruit)
fruit <- data.frame(type = c("apple", "banana", "peach"), mass = c(130, 195, 150))

fruit
class(fruit)

# Access elements from a data frame
fruit [1,2]
fruit [1]
fruit [1,]
fruit [,2]

# Select multiple elements
x <- c(2.1, 4.2, 3.3, 5.4)
x <- 1:10
x[c(3,1,5)]

# exclude elements
x[-10]
x[-c(2,4,6,8,10)]
x[c(-1,-2)]

#logical vectors
x[c(TRUE, FALSE, FALSE, TRUE)]

x[x > 3]

x[0]

#subsetting and assignment
x <- 1:5
x [c(1, 2)] <- 2:3
x
x [-1] <- 4:1
x

# subset rows in data frames based on conditions (logical subsettin)

# subset rows in data frames
mtcars[mtcars$gear == 5, ]

mtcars [mtcars$gear == 5 & mtcars$cyl == 4,]

# removing columns from data frames
df <- data.frame(x = 1:3, y =3:1, z = letters(1:3))
df <- data.frame(x = 1:3, 
                 y = 3:1, 
                 z = "a", "b", 
                 "c")
df$z <- NULL
df[c("x", "y")]
df <-df[c("x", "y")]
setdiff(names(df), "z")
df[setdiff(names(df), "z")]





