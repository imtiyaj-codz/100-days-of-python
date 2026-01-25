class BankAccount:
    bank_name = "Federal Bank"

    def __init__(self, holder, balance=0):
        self.holder = holder
        self.balance = balance
        self.transactions = []

    def deposit(self, amount):
        self.balance += amount
        self.transactions.append(f"Deposited {amount}")
        return self

    def withdraw(self, amount):
        if amount <= self.balance:
            self.balance -= amount
            self.transactions.append(f"Withdrawn {amount}")
        else:
            self.transactions.append("Insufficient balance")
        return self

    def summary(self):
        return self._generate_summary()

    def _generate_summary(self):
        return {
            "Bank": self.bank_name,
            "Holder": self.holder,
            "Balance": self.balance,
            "Transactions": self.transactions
        }

acc = BankAccount("Imtiyaz", 1000)
acc.deposit(500).withdraw(300).withdraw(2000)

print(acc.summary())
