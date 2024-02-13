import random
no_of_testcases = 10

with open("testcases.txt", 'w') as t:
    for i in range(no_of_testcases):
        a = random.randint(0, 2**16 - 1)
        b = random.randint(0, 2**16 - 1)
        c = random.randint(0, 2**32 - 1)
        s = a*b + c
        cout = 0 if (s <= 2**32) else 1
        s = s & 0xFFFFFFFF
        line = str("{0:b}".format(a).zfill(16)) + str("{0:b}".format(b).zfill(16)) + str("{0:b}".format(c).zfill(32)) + " " + str(cout) + str("{0:b}".format(s).zfill(32))
        t.write(line+'\n') 