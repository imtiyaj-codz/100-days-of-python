class Employee:
    company = "TechCorp"

    def __init__(self, name, salary):
        self.name = name
        self.salary = salary

    def show_details(self):
        print(self.name)
        print(self.salary)
        print(Employee.company)


emp1 = Employee("Aman", 50000)
emp2 = Employee("Rahul", 60000)

emp1.show_details()
emp2.show_details()
