# number 2 ***********************************************
nums <- c(2, 4, 5, 8)

if (all(nums > 0)){
    print("All numbers are positive")
}else if (any(nums < 0)){
    print("There are at least one negative numbers")
} else {
    print("There are non-positive numbers")
}

# number 2 ***********************************************

# number 3 ***********************************************
scores <- c(75, 82, 60, 95, 40)

if (all(scores >= 60)){
    print("All students passed")
}else if (any(scores < 60)){
    print("There's at least one student who failed")
} else {
    print("There are no students")
}
# number 3 ***********************************************

# number 4 ***********************************************
temp <- c(32, 35, 29, 40, 38)

if (all(temp >= 30)){
    print("All days are hot")
}else if (any(temp < 30)){
    print("Any day was below 30")
} else {
    print("All temperatures are 30 or below")
}
# number 4 ***********************************************

#Traffic light *******************************************
light <- "red"

result <- switch(light,
                "green" = "Go",
                "yellow" = "Ready",
                "red" = "Stop",
                "Invalid signal")

print(result)

#Traffic light *******************************************

#Grade System *******************************************
grade <- "B"

resulta <- switch(grade,
"A" = "Excellent",
"B" = "Good",
"C" = "Acceptable",
"D" = "Below Average",
"F" = "Fail",
"Invalid grade")

print(resulta)
#Grade System *******************************************

#math operation *******************************************
num1 <- as.numeric(readline(prompt="Enter first number: "))
num2 <- as.numeric(readline(prompt="Enter second number: "))
op <- as.character(readline(prompt="Enter operation (+, -, *, /): "))
result <- switch(op,
                "+" = num1 + num2,
                "-" = num1 - num2,
                "*" = num1 * num2,
                "/" = ifelse(num2 != 0, num1 / num2, "Division by zero error"),
                "Invalid operation")

print(result)