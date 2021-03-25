#Missão 1
#Crie uma expressão regular que faça o casamento de padrão com o número de telefone presente no texto a seguir.
#
#“Olá, tudo bem? Meu whats app é (99) 7 4321-1234”
#

padrao = /\(\d{2}\)\s\d\s(\d{4,5}\-\d{4})/
puts padrao.match("Olá, tudo bem? Meu whats app é (99) 7 4321-1234")