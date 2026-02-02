class Employee():
    raise_amount = 1.04

    def __init__(self, first ,last, pay):
        self.first = first
        self.last = last
        self.pay = pay
        self.email = first + '.' + last + "@gmail.com"

    def fullname(self):
        return '{} {}'.format(self.first, self.last)
    
    def apply_raise(self):
        self.pay = int(self.pay * self.raise_amount)
    
    @classmethod
    def set_raise_amount(cls, amount):
        cls.raise_amount = amount

class Developer(Employee):
    raise_amount = 1.10
    
    def __init__(self, first ,last, pay, prog_lang):
        super().__init__(first ,last, pay)
        self.prog_lang = prog_lang

class Manager(Employee):
    def __init__(self, first, last, pay, employees = None):
        super().__init__(first, last, pay)
        if employees is None: 
            self.employees = []
        else:
            self.employees = employees
    
    def add_emp(self, emp):
        if emp not in self.employees:
            self.employees.append(emp)
    
    def remove_emp(self, emp):
        if emp not in self.employees:
            self.employees.remove(emp)

    def print_employee(self):
        for emp in self.employees:
            print('-->', emp.fullname())



dev_1 = Developer("Alain", "Wesker", 50000 , "Java")
dev_2 = Developer("Serena", "Williams", 60000 , "Python")

mgr_1 = Manager("Selena", "James", 60000, [dev_1])

print(mgr_1.email)