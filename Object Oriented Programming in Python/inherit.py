class Employee:
    company = "TechCorp"

    def __init__(self, name):
        self.name = name

    def show_name(self):
        print(self.name)


class Manager(Employee):
    def __init__(self, name, department):
        super().__init__(name)
        self.department = department

    def show_department(self):
        print(self.department)


m1 = Manager("Aman", "IT")

m1.show_name()
m1.show_department()
print(Manager.company)
