class Employee:
    company = "ABC Corp"   # class variable

    def __init__(self, name):
        self.name = name

    @classmethod
    def change_company(cls, new_company):
        cls.company = new_company


emp1 = Employee("Arbaz")
emp2 = Employee("Rahul")

print(emp1.company)
print(emp2.company)

Employee.change_company("XYZ Ltd")

print(emp1.company)
print(emp2.company)
