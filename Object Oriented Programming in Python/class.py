class Student:
    def __init__(self, name, age, marks):
        self.name = name
        self.age = age
        self.marks = marks

    def display(self):
        print(self.name)
        print(self.age)
        print(self.marks)


s1 = Student("Adnan", 21, 85)
s2 = Student("Rahul", 22, 90)

s1.display()
s2.display()
