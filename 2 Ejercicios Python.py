   #EJ 1


dueño = [28957346,"Juan","Perez",4789689,"Belgrano 101"]
if dueño [0] > 26000000:
   print (dueño [3])

   #EJ 2

Dueño2 = [23546987, "Maria", "Perez", 4789689,  "Pueyrredon  811"]
for i in range (len(Dueño2)):
    if i != 0 and i != 2:   
        print(Dueño2[i])

   #EJ 3

perro = [13,"Puppy","12/12/2012","Macho",123]
perro[2:5] = ["13/12/2012", 28957346]
print (perro)

   #EJ 4

perro = [14,"Fido","12/12/2012","Macho",23546987]
for p in reversed(perro):
   print(p)

   #EJ 5

historial = (2350, 5960, 23000, 1000, 8900)
suma=sum(historial)
if suma < 30000:
 print(suma)
else:
 print("Gastos por encima de lo presupuestado")  

  #EJ 6

historial2 = (23500, 5960, 2300, 10200, 8900)
suma=sum(historial)
cuentafuncion = len([i for i in historial if i > 5000])
print("Monto Total: ",suma); print("Gastos superirores a 5000: ",cuentafuncion)

 #EJ 7

historial3 = (7510, 7960, 76180, 800, 4100)
promedio= sum(historial3)/len(historial3)
print(promedio)
if promedio > 4500:
   print("Se ha excedido del gasto promedio para su mascota")

 #EJ 8

historial4 = (7510, 7960, 76180, 800, 4100)
gastoMinimo= min(historial4)
print(gastoMinimo)

 #EJ 9

historial4 = (8520, 9510, 7530, 3570, 1590)
gastoMaximo= max(historial4)
print(gastoMaximo)

 #EJ 10

Clientes = [ "Juan",  "Mario",  "Ariel",  "Josefina",  "Marianella"]
Clientes.sort()
print(Clientes)
