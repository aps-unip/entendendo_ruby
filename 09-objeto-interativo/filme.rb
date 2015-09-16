class Filme
  attr_accessor :titulo
  attr_reader :rank
  def initialize(titulo, rank=0)
    @titulo = titulo.capitalize
    @rank   = rank
  end
  
  def ganha_rank
    @rank += 1
  end

  def perde_rank
    @rank -= 1
  end

  def to_s
    "#{titulo} está com #{rank} de rank."
  end
end

class Playlist
  def initialize(nome)
    @nome = nome
    @filmes = []
  end
  
  def adiciona_filme(um_filme)
    @filmes.push(um_filme)
  end

  def tocar
    puts "Lista de Filmes do #{@nome}:"
    puts "\n"
    puts @filmes
    puts "\n"
    @filmes.each do |filme|
      filme.ganha_rank
      filme.ganha_rank
      puts filme
    end
  end
end


filme1 = Filme.new("robocop", 7)
filme2 = Filme.new("batman", 8)
filme3 = Filme.new("superman", 9)

#  Primeira Playlist
playlist = Playlist.new("Jones")
playlist.adiciona_filme(filme1)
playlist.adiciona_filme(filme2)
playlist.adiciona_filme(filme3)
playlist.tocar