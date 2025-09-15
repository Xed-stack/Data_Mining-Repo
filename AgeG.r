inputAge <- 65

if (inputAge < 13){
    print("Child")
} else if (inputAge >= 13 && inputAge <= 19){
    print("Teenager")
} else if (inputAge >= 20 && inputAge <= 59){
    print("Adult")
}else if (inputAge >= 60) {
    print("Senior")
} else {
    print("Invalid age")
}