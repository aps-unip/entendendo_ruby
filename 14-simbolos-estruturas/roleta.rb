module Roleta
  def self.roleta
    rand(1..6)
end

  def self.review(filme)
    case roleta
    when 1..2
      filme.perde_rank
      puts "#{filme.titulo} perdeu rank"
    when 3..4
      puts "#{filme.titulo} não teve alterações"
    else
      filme.ganha_rank
      puts "#{filme.titulo} ganhou rank"
    end
  end
end