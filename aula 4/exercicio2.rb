hash = {}
3.times do    
    puts "Digite um estado: "
    estado = gets.chomp
    puts "Digite uma cidade: "
    cidade = gets.chomp

    hash[estado] = cidade
end

puts "Os estados informados são #{hash.keys} e as cidades são #{hash.values}"



