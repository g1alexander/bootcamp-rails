#  *
#  * Reto #1
#  * ¿ES UN ANAGRAMA?
#  * Fecha publicación enunciado: 03/01/22
#  * Fecha publicación resolución: 10/01/22
#  * Dificultad: MEDIA
#  *
#  * Enunciado: Escribe una función que reciba dos palabras (String) y
#  * retorne verdadero o falso (Boolean) según sean o no anagramas.
#  * Un Anagrama consiste en formar una palabra reordenando TODAS las letras de otra palabra inicial.
#  * NO hace falta comprobar que ambas palabras existan.
#  * Dos palabras exactamente iguales no son anagrama.
#  *

# una palabra es anagrama de otra si las dos tienen las mismas letras,
# con el mismo número de apariciones, pero en un orden diferente.

#  * Información adicional:
#  * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🗓reto-semanal" para preguntas,
#  * dudas o prestar ayuda la acomunidad.
#  * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
#  * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
#  * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
#  *
#  */

def anagram(word_one, word_two)
  return false if word_one == word_two
  return false if word_one.length != word_two.length

  value = false

  word_one.each_char do |word|
    value = word_two.downcase.include?(word.downcase)

    return false if value == false
  end

  value
end

response = anagram('Pagar', 'Praga')

puts response
