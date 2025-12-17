numbers = [1, 2, 1, 3, 2, 1]
count = {}

for n in numbers:
    count[n] = count.get(n, 0) + 1
print(count)