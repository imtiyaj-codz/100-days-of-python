print("This is an program demonstrating the use of classes,instances and methods in python\n")

class Employee():
    def __init__(self,fname,lname,pay):
        self.fname=fname
        self.lname=lname
        self.pay=pay
        self.email=fname+"."+lname+"@gmail.com"

    def fullname(self):
        return '{} {}'.format(self.fname,self.lname)

emp_1=Employee('Alain','Wesker',50000)
emp_2=Employee('Ash','Ketchup',65000)

print(emp_1.email)
print(emp_1.fullname())
print(emp_2.fullname())