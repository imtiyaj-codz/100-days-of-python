import datetime
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
    
    @classmethod #Alternative Constructor
    def from_string(cls,emp_str):
        first , last , pay = emp_str.split('-')
        return cls (first , last , pay)

    @staticmethod
    def work_day(day):
        if day == 0 or day == 7:
            return False
        return True


emp_1 = Employee("Alain", "Wesker", 50000)
emp_2 = Employee("Serena", "Williams", 76000)


Employee.set_raise_amount(1.05)
print(Employee.raise_amount)
print(emp_1.raise_amount)
print(emp_2.raise_amount)

emp_str_1 = 'Ashley-Benstokes-70000'
emp_str_2 = 'Clemont-Zelonski-37703'
emp_str_3 = 'Ashley-Anderson-60000'

new_emp_1 = Employee.from_string(emp_str_1)

print(new_emp_1.email)
print(new_emp_1.pay)

my_day = datetime.date(2025 , 7 , 7)

print(Employee.work_day(my_day))
