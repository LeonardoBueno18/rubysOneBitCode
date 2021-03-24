require 'cpf_cnpj'

def valida_cpf (cpf)
    test = CPF.valid?(cpf)
    if test == true
        return "válido"        
    else
        return "inválido"
    end
end

puts "Digite o cpf: "
cpf = gets.chomp
puts "O cpf digitado é #{valida_cpf(cpf)}"