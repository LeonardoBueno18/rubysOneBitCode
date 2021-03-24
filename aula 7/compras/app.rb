require_relative "produto"
require_relative "mercado"

produto = Produto.new
produto.nome = "café"
produto.preco = 18.50

produto2 = Produto.new
produto2.nome = "açucar"
produto2.preco = 6.00

produto3 = Produto.new
produto3.nome = "chá"
produto3.preco = 3.00

zaffari = Mercado.new(produto)
zaffari.compra
zaffari = Mercado.new(produto2)
zaffari.compra
zaffari = Mercado.new(produto3)
zaffari.compra