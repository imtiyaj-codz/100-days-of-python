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

