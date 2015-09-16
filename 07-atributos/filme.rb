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

  def normalize_rank
    @rank / 10
  end

  def to_s
    "#{@titulo} está com #{rank} de rank."
  end
end

filme = Filme.new("superman", 8)
puts filme
filme.ganha_rank
filme.ganha_rank

puts filme
puts filme.titulo
puts filme.rank
puts filme.titulo = "Fantasma"
puts filme.titulo
puts filme
puts filme.normalize_rank