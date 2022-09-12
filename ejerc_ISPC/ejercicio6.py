import os
os.system('cls')

Historial_Frida=(23500,5960,2300,10200,8900)
valor=[]
def gastos():
    for i in Historial_Frida:
        if i >5000:
          valor.append(i)
    print('La cantidad de gastos superiores a $5000 son:', len(valor))          
gastos()
