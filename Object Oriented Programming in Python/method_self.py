class Student:
    def __init__(self, name):
        self.name = name

    def display(self):
        print(self.name)

s1 = Student("Arbaz")
s2 = Student("Rahul")

s1.display()
s2.display()
