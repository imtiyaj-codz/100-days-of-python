# def greet():
#     print("Hello guys ")
#     print("Hello welcome to kopargaon guys")
#     print("Enjoy the kopargaon guys")
# greet()

def greet_with_name(name):
    print(f"Hello guys {name}")
    print(f"Hello welcome to kopargaon {name}")
greet_with_name("Serena")


def add(a,b):
    print(a+b)

add(5,10)

def full_name(first, last):
    print(f"{first} {last}")

full_name("Imtiyaz", "Maniyar")


def greet(name="Friend"):
    print("Hello", name)

greet()         # prints: Hello Friend
greet("Moin")   # prints: Hello Moin


def add(a, b):
    return a + b
sum = add(5, 10)
print(sum)   # 15

def info(name, age):
    print(name, age)

info("Imtiyaz", 22)


def calculate(a, b):
    return a + b, a - b, a * b

x, y, z = calculate(10, 5)

print(x)
print(y)
print(z)

def info(age, name):
    print("Age:", age)
    print("Name:", name)

info(age=22, name="Imtiyaz")

def total(*numbers):
    print(sum(numbers))

total(1, 2, 3, 4, 5)

def profile(**details):
    print(details)

profile(name="Imtiyaz", age=22, city="Kopargaon")


