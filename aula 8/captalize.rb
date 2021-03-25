
def capitalize_name (maiuscula, name)
    puts maiuscula.call(name)
end

maiuscula = -> (name){name.capitalize}

name = "joao"
capitalize_name(maiuscula, name)