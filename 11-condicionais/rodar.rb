require_relative 'filme'
require_relative 'playlist'

filme1 = Filme.new("robocop", 9)
filme2 = Filme.new("batman", 9)
filme3 = Filme.new("vingadores", 9)

playlist = Playlist.new("jones")

playlist.adiciona_filme(filme1)
playlist.adiciona_filme(filme2)
playlist.adiciona_filme(filme3)

playlist.tocar