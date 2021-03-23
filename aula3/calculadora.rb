
continua = "y"
loop do
    if continua == "y"
        puts "Bem vindo a calculadora!"
        print "Digite o primeiro numero: "
        num1 = gets.chomp.to_i
        print "Seleciona a operação [ + | - | * | / ]: "
        op = gets.chomp
        print "Digite o segundo numero: "
        num2 = gets.chomp.to_i
        

        case op
            when "+"
                result = num1 + num2
            when "-"
                result = num1 - num2
            when "*"
                result = num1 * num2
            when "/"
                result = num1 / num2
    else
        puts "Operação inválida!"
    end

    puts "O resultado é: #{result}"

    puts "Deseja realizar outro calculo? [y|n]"
    continua = gets.chomp
    else
        puts "Obrigado por usar a calculadora!"
        break
    end
end