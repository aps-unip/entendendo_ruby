require_relative 'filme'
class Playlist
  def initialize(nome)
    @nome = nome.capitalize
    @filmes = []
  end
  
  def adiciona_filme(um_filme)
    @filmes.push(um_filme)
  end

  def tocar
    puts "Playlist do #{@nome}:"
    puts "\n"
    puts @filmes
    puts "\n"
    @filmes.each  do |filme|
      filme.ganha_rank
      filme.ganha_rank
      puts filme
    end
  end
end