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
    "#{@titulo} está com #{@rank} de rank"
  end
end

filme1 = Filme.new("robocop", 7)
filme2 = Filme.new("batman", 9)
filme3 = Filme.new("superman", 10)

filmes = [filme1, filme2, filme3]

filmes.each do |filme|
  filme.ganha_rank
  filme.ganha_rank
  puts filme
end