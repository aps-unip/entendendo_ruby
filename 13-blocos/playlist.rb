require_relative 'filme'
require_relative 'roleta'
require_relative 'barzinho'


class Playlist

  attr_reader :nome

  def initialize(nome)
    @nome = nome.capitalize
    @filmes = []
  end

  def adiciona_filmes(um_filme)
    @filmes.push(um_filme)
  end

  def tocar(visualizacoes)
    puts "Playlist do #{@nome}"

    puts @filmes.sort

    1.upto(visualizacoes) do |count|
      puts "\nVisualização #{count}:"
      @filmes.each do |filme|
        Roleta.review(filme)
        puts filme
      end
    end
  end

  def mostrar_status
    puts "\nStatus da lista de #{@nome}:"

    sucesso, razoavel = @filmes.partition  { |filme| filme.top? }

    puts "\nSucessos:"
    puts sucesso.sort

    puts "\nRazoaveis:"
    puts razoavel.sort
  end
end