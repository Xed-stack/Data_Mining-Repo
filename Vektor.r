Viktor <- c(20, 55, 70)

if (all(Viktor > 50)){
    print("All values are above 50")
} else if (any(Viktor > 50)){
    print("Some are above 50")
} else {
    print("None are above 50")
}