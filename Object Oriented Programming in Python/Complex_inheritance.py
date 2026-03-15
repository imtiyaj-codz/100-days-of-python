class Employee:
    company_name = "TechNova Pvt Ltd"   # class variable

    def __init__(self, name, emp_id, base_salary):
        self.name = name
        self.emp_id = emp_id
        self.base_salary = base_salary

    def calculate_salary(self):
        return self.base_salary

    def get_details(self):
        return f"Name: {self.name}, ID: {self.emp_id}, Company: {Employee.company_name}"


# Single Inheritance
class Developer(Employee):
    def __init__(self, name, emp_id, base_salary, programming_language):
        super().__init__(name, emp_id, base_salary)
        self.programming_language = programming_language

    def calculate_salary(self):
        bonus = 15000
        return self.base_salary + bonus

    def get_details(self):
        return super().get_details() + f", Role: Developer, Language: {self.programming_language}"


# Single Inheritance
class Manager(Employee):
    def __init__(self, name, emp_id, base_salary, team_size):
        super().__init__(name, emp_id, base_salary)
        self.team_size = team_size

    def calculate_salary(self):
        allowance = self.team_size * 2000
        return self.base_salary + allowance

    def get_details(self):
        return super().get_details() + f", Role: Manager, Team Size: {self.team_size}"


# Multiple Inheritance
class TechLead(Developer, Manager):
    def __init__(self, name, emp_id, base_salary, programming_language, team_size):
        Developer.__init__(self, name, emp_id, base_salary, programming_language)
        self.team_size = team_size

    def calculate_salary(self):
        dev_bonus = 15000
        lead_bonus = self.team_size * 3000
        return self.base_salary + dev_bonus + lead_bonus

    def get_details(self):
        return (
            f"Name: {self.name}, ID: {self.emp_id}, "
            f"Role: Tech Lead, Language: {self.programming_language}, "
            f"Team Size: {self.team_size}, Company: {Employee.company_name}"
        )


# ------------------ USE CASE ------------------

emp = Employee("Ayaan", 101, 30000)
dev = Developer("Rohit", 102, 50000, "Python")
mgr = Manager("Neha", 103, 60000, 5)
lead = TechLead("Imtiyaz", 104, 80000, "Python", 4)

employees = [emp, dev, mgr, lead]

for e in employees:
    print(e.get_details())
    print("Salary:", e.calculate_salary())
    print("-" * 50)
