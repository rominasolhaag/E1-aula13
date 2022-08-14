import os
os.system('cls')

Historial3_lennon=(9530,4120,4580,1500,890,7516,426)
sumatoria=0
cantidad_elementos=[]
for i in Historial3_lennon:
    sumatoria+=i
    cantidad_elementos.append(i)
divisor= len(cantidad_elementos)
promedio=round ((sumatoria/divisor),2)
if not promedio>4500:
    print("Estas dentro de los gastos permitidos ya que el promedio es:", promedio)
else:
    print('"Se ha excedido del gasto promedio para su mascota"')