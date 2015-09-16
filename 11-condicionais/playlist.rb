require_relative 'filme'

class Playlist
  def initialize(nome)
    @nome = nome.capitalize
    @filmes = []
  end
  
  def adiciona_filme(um_filme)
    @filmes.push(um_filme)
  end

  def roleta
    rand(1..6)
  end

  def tocar
    puts "Playlist do #{@nome}:"
    puts "\n"
    @filmes.each do |filme|
      case roleta
      when 1..2
        filme.perde_rank
        puts "#{filme.titulo} perdeu rank"
      when 3..4
        puts "#{filme.titulo} não foi alterado"
      else
        filme.ganha_rank
        puts "#{filme.titulo} ganhou rank"
      end
      puts filme
    end
  end
end