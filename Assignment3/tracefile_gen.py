import random

no_of_testcases = 10

with open("testcases.txt", 'w') as t:
    for i in range(no_of_testcases):
        cin = random.randint(0, 1)
        a = random.randint(0, 2**32 - 1)  # Ensure 32-bit representation
        b = random.randint(0, 2**32 - 1)  # Ensure 32-bit representation
        s = a + b + cin
        cout = 1 if s > 2**32 - 1 else 0  # Check for carry out
        s = s & (2**32 - 1)  # Ensure 32-bit representation
        line = f"{cin:1b}{a:032b}{b:032b} {cout:1b}{s:032b}"
        t.write(line + '\n')
