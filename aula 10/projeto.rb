require_relative 'novo_tradutor.rb'
puts 'Digite a linguagem original do que deseja traduzir: '
lingua_original = gets.chomp
puts 'Digite a palavra que deseja traduzir: '
palavra = gets.chomp
puts 'Digite a linguagem para realizar a tradução: '
lingua = gets.chomp

tradutor = Tradutor.new(palavra, lingua, lingua_original)

