require_relative 'filme'
require_relative 'playlist'


filme1 = Filme.new("Vingadores", 10)
filme2 = Filme.new("Batman VS Superman", 9)
filme3 = Filme.new("E o vento levou")

playlist = Playlist.new("jones")
playlist.adiciona_filme(filme1)
playlist.adiciona_filme(filme2)
playlist.adiciona_filme(filme3)
playlist.tocar(3)
playlist.mostrar_status