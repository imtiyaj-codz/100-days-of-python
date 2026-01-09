class Employee():
    raise_amount = 1.04 #class variable

    def __init__(self,first,last,pay):#Constructor class automatically created
        self.first = first
        self.last = last
        self.pay = pay
        self.email= self.first+"."+self.last + '@gmail.com'
    def fullname(self):#Method
        return '{} {}'.format(self.first+"."+self.last)
    def apply_raise(self): #use of class variable and can be accessed by any class in the program
        self.pay=int(self.pay * self.raise_amount)
        #You can use class variable either by class name (Employee.raise_amount or by instance (self.raise_amount))


emp_1=Employee("alain", "wesker", 50000)# Instance/Object 

# you can use this method to print the attrubutes of class and object from the method or constructor
print(emp_1.pay)

# This is the use of the class variable apply raise
emp_1.apply_raise()
print(emp_1.pay)