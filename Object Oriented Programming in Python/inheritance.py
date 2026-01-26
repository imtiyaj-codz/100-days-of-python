class Employee():
    raise_amount = 1.04

    def __init__(self, first ,last, pay):
        self.first = first
        self.last = last
        self.pay = pay
        self.email = first + '.' + last + "@gmail.com"

    def fullname(self):
        return '{} {}'.format(self.first,self.last)
    
    def apply_raise(self):
        self.pay = int(self.pay * self.raise_amount)
    
    @classmethod
    def set_raise_amount(cls,amount):
        cls.raise_amount = amount

class Developer(Employee):
    raise_amount = 1.10

dev_1 = Developer("Alain", "Wesker", 50000)
dev_2 = Developer("Serena", "Williams", 60000)

print(dev_1.pay)
dev_1.apply_raise()
print(dev_1.pay)

