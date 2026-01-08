class Employee:
    def __init__(self, name, pay):
        self.name = name
        self.pay = pay

    @classmethod
    def from_string(cls, emp_str):
        name, pay = emp_str.split('-')
        return cls(name, int(pay))
