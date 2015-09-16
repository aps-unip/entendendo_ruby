require_relative 'playlist'
require_relative 'filme'

filme1 = Filme.new("batman", 8)
filme2 = Filme.new("robocop", 9)
filme3 = Filme.new("vingadores", 10)

playlist = Playlist.new("jones")

playlist.adiciona_filme(filme1)
playlist.adiciona_filme(filme2)
playlist.adiciona_filme(filme3)

playlist.tocar