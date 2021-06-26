library(R6)

Randoms <- R6Class("Randoms",
                   active = list(
                     rand = function() {
                       set.seed(1)
                       rnorm(1)
                     },
                     rand2 = function() {
                       rnorm(1)
                     }
                   )
)

n <- Randoms$new()

n$rand
rnorm(1)
n$rand2

Numbers <- R6Class("Numbers",
                   public = list(
                     value = 5,
                     multiply = function(x = 2) {
                       self$value <- self$value * x
                       self
                     }
                   ))

n2 <- Numbers$new()

n2$multiply()
n2$multiply(x = 3)
n2$multiply()$multiply(x = 3)
