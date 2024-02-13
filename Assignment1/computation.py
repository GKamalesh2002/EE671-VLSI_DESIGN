def calc(W):
    Ad = W*2*0.18
    Ps = 2*(W + 2*0.18)
    return Ps,Ad
Psn,Adn = calc(2*0.523)
Psp1,Adp1 = calc(1.559)
Psp2,Adp2 = calc(1.559*2)
print(Psn,Adn)
print(Psp1,Adp1)
print(Psp2,Adp2)
