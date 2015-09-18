require_relative 'filme'
require_relative 'roleta'
require_relative 'bar_cinema.rb'


class Playlist
  attr_reader :nome

  def initialize(nome)
    @nome = nome.capitalize
    @filmes = []
  end
  
  def adiciona_filme(um_filme)
    @filmes.push(um_filme)
  end

  def tocar(visualizacoes)
    puts "Playlist #{@nome}:"
    puts @filmes.sort

    lanches = BarCinema::LANCHES
    puts "\nNo bar do cinema tem #{lanches.size} tipos de lanchinhos:"
    lanches.each do |lanche|
      puts "#{lanche.nome} possui #{lanche.carboidratos} carboidratos"
    end

    1.upto(visualizacoes) do |count|
      puts "\nVisualização #{count}:"
      @filmes.each do |filme|
        # binding(pry)
        Roleta.review(filme)
        lanche = BarCinema.random
        filme.comer_lanche(lanche)
        puts filme
      end
    end
  end

  def total_carboidratos_consumidos
    @filmes.reduce(0) { |sum, filme| sum + filme.carboidratos_consumidos }
  end

  def mostrar_status
    puts "\nStatus #{@nome}:"

    tops, razoaveis = @filmes.partition { |filme| filme.top? }

    puts "\nTops:"
    puts tops.sort

    puts "\nRazoaveis"
    puts razoaveis.sort

    puts "\nTotal de carboidratos consumidos: #{total_carboidratos_consumidos}"
    @filmes.sort.each do |filme|
      puts "\nTotal de lanches assistindo #{filme.titulo}:"
      puts "Total de carboidratos consumidos: #{filme.carboidratos_consumidos}"
    end
  end
end