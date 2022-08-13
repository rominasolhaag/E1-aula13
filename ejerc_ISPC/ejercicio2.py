import os
os.system('cls')

Dueno2= [23546987,'Maria','Perez', 4789689, 'Pueyrredon 811']
#print(len(Dueno2))
datos = []
for i in Dueno2:
    if i == 23546987:
        continue
    elif i=='Perez':
        continue
    datos.append(i)
    print (i, end=" ")
    
