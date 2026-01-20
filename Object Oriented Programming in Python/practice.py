class Employee():
    raise_amount = 1.04

    def __init__(self, fname ,lname, pay):
        self.fname = fname
        self.lname = lname
        self.pay = pay
        self.email = fname + '.' + lname + "@gmail.com"

    def fullname(self):
        return '{} {}'.format(self.fname,self.lname)
    
    def apply_raise(self):
        self.pay = int(self.pay * self.raise_amount)
    
    @classmethod
    def set_raise_amount(cls,amount):
        cls.raise_amount = amount

emp_1 = Employee("Alain", "Wesker", 50000)
emp_2 = Employee("Serena", "Williams", 76000)


Employee.set_raise_amount(1.05)
print(Employee.raise_amount)
print(emp_1.raise_amount)
print(emp_2.raise_amount)
