titulo = "robocop"

a = titulo.reverse
puts a

b = a.reverse
puts b

puts titulo.reverse.reverse

puts titulo.capitalize.ljust(30, '.')
titulo_formatado = titulo.capitalize.ljust(30, '.')
puts titulo_formatado

rank = 9

puts "#{titulo_formatado}#{rank}"