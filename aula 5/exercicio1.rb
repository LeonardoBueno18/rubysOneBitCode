def potencia(numero, expoente)
    numero ** expoente
end

puts "Informe o numero: "
numero = gets.chomp.to_i
puts "Informe o expoente: "
expoente = gets.chomp.to_i
puts "O resultado é: #{potencia(numero, expoente)}"