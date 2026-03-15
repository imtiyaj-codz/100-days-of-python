class BankAccount:
    def __init__(self, balance, pin):
        self.__balance = balance
        self.__pin = pin

    def deposit(self, amount):
        if amount > 0:
            self.__balance += amount

    def withdraw(self, amount, pin):
        if pin == self.__pin and amount <= self.__balance:
            self.__balance -= amount

    def get_balance(self, pin):
        if pin == self.__pin:
            return self.__balance
        return "Wrong PIN"


account = BankAccount(5000, 1234)

account.deposit(1000)
account.withdraw(2000, 1234)
print(account.get_balance(1234))