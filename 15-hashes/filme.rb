require_relative 'bar_cinema'
class Filme
  attr_accessor :titulo
  attr_reader :rank
  
  def initialize(titulo, rank=0)
    @titulo = titulo.capitalize
    @rank   = rank
    @lanches_carbo = Hash.new(0)
  end
  
  def ganha_rank
    @rank += 1
  end

  def perde_rank
    @rank -= 1
  end

  def top?
    @rank >= 10
  end

  def status
    top? ? "Sucesso": "Razoavel"
  end

  def comer_lanche(lanche)
    @lanches_carbo[lanche.nome] += lanche.carboidratos
    puts "#{@titulo} fez você consumir #{lanche.carboidratos} carboidratos
          consumindo #{lanche.nome}"
    puts "#{@titulo} com lanches: #{@lanches_carbo}"
  end

  def carboidratos_consumidos
    @lanches_carbo.values.reduce(0, :+)
  end

  def to_s
    "#{@titulo} está com #{@rank} de rank (#{status})"
  end

  def <=>(outro)
    outro.rank <=> @rank
  end
end