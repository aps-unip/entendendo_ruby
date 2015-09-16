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