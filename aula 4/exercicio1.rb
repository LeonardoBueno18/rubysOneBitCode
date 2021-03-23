numeros = []

puts "Informe o primeiro numero: "
numeros[0] = gets.chomp.to_i
puts "Informe o segundo numero: "
numeros[1] = gets.chomp.to_i
puts "Informe o terceiro numero: "
numeros[2] = gets.chomp.to_i

numeros.each do |numero|
    numero = numero ** 2
    puts "A segunda potencia dos numeros informados é: #{numero}" 
end