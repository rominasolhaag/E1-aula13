import os
os.system('cls')
#devorador de vocales#
word_without_vowels = ""
vocales="AEIOU"
usuario=str(input("ingrese una palabra")).upper()
user_word=usuario
texto1=""
for letter in user_word:
    if letter not in vocales:#letras que no esten en volaces
        texto1=texto1+letter#guarda las consonantes
    else:
        word_without_vowels=word_without_vowels+letter
   
print (texto1)
print (word_without_vowels)
#otra forma sin terminar
text = "cascada"
for letter in text:
    if letter == "a":
        continue
    print(letter, end="")