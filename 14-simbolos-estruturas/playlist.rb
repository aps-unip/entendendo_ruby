require_relative 'filme'
require_relative 'roleta'
require_relative 'bar_cinema'
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
    puts "Playlist #{@nome}:"
    puts @filmes.sort

    lanches = BarCinema::LANCHES
    puts "\nAqui tem #{lanches.size} tipos de lanches disponiveis:"
    lanches.each do |lanche|
      puts "#{lanche.nome} tem #{lanche.carboidratos} de carboidrato"
    end

    1.upto(visualizacoes) do |count|
      puts "\nVisualização #{count}:"
      @filmes.each do |filme|
        Roleta.review(filme)
        lanche = BarCinema.random
        puts "#{filme.titulo} fez você comer #{lanche.nome} e consumir
              #{lanche.carboidratos} carboidratos"
        puts filme
        puts "\n"
      end
    end
  end

  def mostrar_status
    puts "Status #{@nome}:"

    sucesso, razoavel = @filmes.partition { |filme| filme.top? }

    puts "\nSucessos:"
    puts sucesso.sort

    puts "\nRazoaveis:"
    puts razoavel.sort
  end
end
