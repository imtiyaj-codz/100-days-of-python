class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def greet(self):
        return f"My name is {self.name} and I am {self.age} years old"

p1 = Person("Adnan", 21)
p2 = Person("Imtiyaz", 22)

print(p1.greet())
print(p2.greet())
