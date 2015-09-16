require_relative 'filme'
require_relative 'roleta'

class Playlist
  attr_reader :nome

  def initialize(nome)
    @nome   = nome
    @filmes = []
  end

  def adiciona_filmes(um_filme)
    @filmes.push(um_filme)
  end

  def tocar
    puts "Playlist do #{@nome}:"
    puts @filmes

   @filmes.each do |filme|
    Roleta.review(filme)
    puts filme
    end
  end
end
