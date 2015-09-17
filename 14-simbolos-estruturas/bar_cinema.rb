Lanche = Struct.new(:nome, :carboidratos)

module BarCinema
  LANCHES = [
    Lanche.new(:chips,    120),
    Lanche.new(:pizza,    230),
    Lanche.new(:nachos,   221),
    Lanche.new(:hot_dog,  300),
    Lanche.new(:pastel,    120)
  ]

  def self.random
    LANCHES.sample
  end
end

