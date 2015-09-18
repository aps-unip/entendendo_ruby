Lanche = Struct.new(:nome, :carboidratos)


module BarCinema
  LANCHES = [
    Lanche.new(:pizza,      380),
    Lanche.new(:pastel,     280),
    Lanche.new(:enrolado,   280),
    Lanche.new(:coxinha,    130),
    Lanche.new(:refri,      200)
  ]

  def self.random
    LANCHES.sample
  end
end