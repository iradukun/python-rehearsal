def recursive_factorial(n):
    if n ==1:
        return 1
    else:
        return n*recursive_factorial(n-1)
# num=input("Input a number")
num=6

if num<0:
    print("Invalid Input ! Please enter a positive number ")
elif num==0 :
    print("Factorial of number zero is 1 ")
else:
    print("Factorial of number ", num, "=", recursive_factorial(num))
