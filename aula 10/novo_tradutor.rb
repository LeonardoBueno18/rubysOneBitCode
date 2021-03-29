require 'uri'
require 'net/http'
require 'openssl'
require 'json'

class Tradutor
    attr_reader :url

    def initialize(palavra, lingua, lingua_original)
        #parametros para tradução
        @palavra = palavra
        @lingua = lingua
        @lingua_original = lingua_original

        #conexão com a API 
        @url = URI("https://google-translate1.p.rapidapi.com/language/translate/v2")
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        request = Net::HTTP::Post.new(url)
        request["content-type"] = 'application/x-www-form-urlencoded'
        request["accept-encoding"] = 'application/gzip'
        request["x-rapidapi-key"] = '9b389a3881msh5374fc0007fc3bcp113caajsn1ce2ae7e2953'
        request["x-rapidapi-host"] = 'google-translate1.p.rapidapi.com'
        #gerando requisição
        request.body = "q=#{@palavra}&source=#{@lingua_original}&target=#{@lingua}"
        
        #envio da request para a API
        response = http.request(request)
        #filto do valor solicitado no JSON
        traduzido = JSON.parse(response.body)["data"]["translations"][0]["translatedText"]
        #mostra a tradução
        puts traduzido
        #chama o metodo de gerar arquivo e passa os parametros
        gerar_arquivo(@palavra, traduzido, @lingua, @lingua_original)
    end



    #gerando o metodo de criar arquivo
    private def  gerar_arquivo (original, traducao, lingua, lingua_original)
        #instanciando o time
        time = Time.now
        #recebendo os valores para adição do arquivo
        @original = original
        @traducao = traducao
        @lingua_original = lingua_original
        @lingua = lingua
        #mascara de nome
        case @lingua_original 
        when "ru"
            @lingua_original = "Russo"
        when "pt"
            @lingua_original = "Português"
        when "en"
            @lingua_original = "Ingles"
        when "es"
            @lingua_original = "Espanhol"
        when "pt-br"
            @lingua_original = "Português Brasileiro"
        else 
          puts 'Não foi possível identificar'
        end
        #mascara de nome
        case @lingua 
        when "ru"
            @lingua = "Russo"
        when "pt"
            @lingua = "Português"
        when "en"
            @lingua = "Ingles"
        when "es"
            @lingua = "Espanhol"
        when "pt-br"
            @lingua = "Português Brasileiro"
        else 
          puts 'Não foi possível identificar'
        end


        #criando o arquivo
        file = File.open(time.strftime("%m-%d-%Y.%H.%M.%S") + ".txt", 'a') do |lista|
			lista.puts "Lingua original: #{@lingua_original} "
            lista.puts "-------------------------------------"
            lista.puts @original
			lista.puts "-------------------------------------"
            lista.puts "Lingua tradução: #{@lingua} "
            lista.puts "-------------------------------------"
			lista.puts @traducao
			lista.puts "-------------------------------------"

		end
    end
end