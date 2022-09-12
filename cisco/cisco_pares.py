import os
os.system('cls')

inpar_numero = 0
par_numero = 0
 
numero=int(input('ingresa un numero o escribe 0 para salir '))
 
while numero!= 0:
    if numero %2 == 1:
        inpar_numero+=1
    else:
        par_numero+=1
         
    numero=int(input('ingresa un numero o escribe 0 para salir '))
    
print('cuenta de numeros pares es, ', par_numero)
print('cuenta de numeros inpares es, ', inpar_numero)