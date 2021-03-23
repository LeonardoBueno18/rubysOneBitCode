hash = {}
3.times do    
    puts "Digite um estado: "
    estado = gets.chomp
    puts "Digite uma cidade: "
    cidade = gets.chomp

    hash[estado] = cidade
end
hash.each do |k, v|
puts "O estado informado é #{k} e a cidade é #{v}"
end


