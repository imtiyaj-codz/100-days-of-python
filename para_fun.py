# Function without parameter
def greet():
    print("Hello guys ")
    print("Hello welcome to kopargaon guys")
    print("Enjoy the kopargaon guys")
greet()

# Function with parameter
def greet_with_name(name):
    print(f"Hello guys {name}")
    print(f"Hello welcome to kopargaon {name}")
greet_with_name("Serena")

# Function with parameter and argument
# Where a and b are parameter
def add(a,b):
    print(a+b)
# and 5 and 10 are argument
add(5,10)

# Function with multiple parameter
def full_name(first, last):
    print(f"{first} {last}")

full_name("Imtiyaz", "Maniyar")

# Function with default parameter
def greet(name="Friend"):
    print("Hello", name)

greet()         # prints: Hello Friend
greet("Moin")   # prints: Hello Moin

# Function with Return statement [Important]
def add(a, b):
    return a + b
sum = add(5, 10)
print(sum)   

# Positional arguments
def info(name, age):
    print(name, age)

info("Imtiyaz", 22)

# keyword arguments
def my_info(age, name):
    print("Age:", age)
    print("Name:", name)

my_info(age=22, name="Imtiyaz")


# Functions returning muliple values
def calculate(a, b):
    return a + b, a - b, a * b
x, y, z = calculate(10, 5)
print(x)
print(y)
print(z)

# Variable length arguments
def total(*numbers):
    print(sum(numbers))

total(1, 2, 3, 4, 5)

# variable length arguments 
def profile(**details):
    print(details)

profile(name="Imtiyaz", age=22, city="Kopargaon")

# lamda Functions
square = lambda x: x * x
print(square(5))

















