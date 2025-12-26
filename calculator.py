def add(n1,n2):
    return n1+n2

def substract(n1,n2):
    return n1-n2

def multiply(n1,n2):
    return n1*n2

def divide(n1,n2):
    return n1/n2

operations={
    "+":add,
    "-":substract,
    "*":multiply,
    "/":divide,
}

num1=input("Pick the first number")

for symbol in operations:
    
operation_symbol=input("Pick an operation :\n +\n -\n *\n /")