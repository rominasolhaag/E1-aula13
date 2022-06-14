import os
os.system('cls')
#tomando q si o si se 
#altura=0
#nivel= 1
#block= int(input("ingrese la cantidad de bloques que deseas colocar en tu piramide: \n"))
#while nivel<=block:
 #   altura+=1
  #  block-=nivel
   # nivel+=1
#print("tienen una altura de ", altura)

bloques = int(input("Ingrese el número de bloques:"))
altura=0
 
while altura <= bloques:
    bloques=bloques-altura
    altura=altura+1
 
 
else:
    print("La altura de la pirámide:", altura-1)



