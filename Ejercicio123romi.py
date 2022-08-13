#1) Crear una lista en Python denominada “Dueno” que contenga los siguientes valores:
dueno=[28957346,  "Juan",  "Perez", 4789689,  "Belgrano 101"]
if dueno[0]>26000000:
    print(dueno[3])

#2)Crear una lista en Python denominada “Dueno2”  y recorrerla con un bucle  mostrando sus elementos por pantalla con excepción del DNI y el apellido. Los elementos de la lista son:
dueno2=[]
dueno2= [23546987,  "Maria",  "Perez", 4789689,"Pueyrredon  811"]
list = []
for i in dueno2:
    if i!=dueno2[0] and i!=dueno2[2]:
        list.append(i)
print("Dueno: ",list)

#3)  Crear un lista en Python denominado “Perro” que contenga los siguientes valores:
perro=[]
perro= [13,  "Puppy",  "12/12/2012" , "Macho", 123]
perro[2]= "13/12/2012"
perro[4]= 28957346
print(perro)