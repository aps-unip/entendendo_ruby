
def lista_filme(titulo)
  "Filme: #{titulo.capitalize}"
end

puts lista_filme("robocop")
puts lista_filme("homem de ferro")
# ----------------------------------
um_titulo = "hulk"
puts lista_filme(um_titulo)
# --------------------------------------------
def lista_filme(titulo, rank)
  "#{titulo.capitalize} está com #{rank} de rank."
end

puts lista_filme("robocop", 10)
puts lista_filme("batman", 7)
# ---------------------------------------------
def lista_filme(titulo, rank=0)
  "#{titulo.capitalize} está com #{rank} de rank."
end

puts lista_filme("batman", 7)
puts lista_filme("hulk", 9)
puts lista_filme("robocop")
# ------------------------------------------------

def lista_filme(titulo, rank=titulo.length)
  "#{titulo.capitalize} está com #{rank} de rank."
end

puts lista_filme("robocop")
# ----------------------------------------------

def lista_filme(titulo, rank=0)
  data_atual = Time.new
  hoje = data_atual.strftime("%A")
  "#{titulo.capitalize} está com #{rank} de rank na #{hoje}"
end

puts lista_filme("robocop", 7)
puts lista_filme("batman", 8)
puts lista_filme("E o vento levou")
# ----------------------------------------------------

def dia_semana
  data_atual = Time.new
  data_atual.strftime("%A")
end

def lista_filme(titulo, rank=0)
  hoje = dia_semana
  "#{titulo.capitalize} está com #{rank} de rank na #{hoje}"
end

puts lista_filme("robocop", 7)
# --------------------------------------------------------------

def lista_fime(titulo, rank=0)
  "#{titulo.capitalize} está com #{rank} de rank na #{dia_semana}"
end

puts lista_filme("hulk")
# -----------------------------------------------------------

def lista_filme(titulo, rank=0)
  titulo_formatado = titulo.capitalize.ljust(30, '.')
  "#{dia_semana.upcase}: #{titulo_formatado}#{rank}"
end
puts lista_filme("robocop", 7)