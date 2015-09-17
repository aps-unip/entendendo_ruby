require_relative 'filme'
require_relative 'playlist'
require 'pry'

filme1 = Filme.new("robocop", 9)
filme2 = Filme.new("vingadores", 9)
filme3 = Filme.new("superman", 9)

playlist = Playlist.new("jones")
playlist.adiciona_filmes(filme1)
playlist.adiciona_filmes(filme2)
playlist.adiciona_filmes(filme3)
binding.pry
playlist.tocar(3)
playlist.mostrar_status
