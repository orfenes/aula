require_relative "pagamento"
require_relative "frete"

class Vendas
  include Pagamento
  include Frete

  PRODUTOS = {
    "PS3" => 900.00,
    "PS4" => 1600.00
  }


  def imprimir_produtos
    puts '--Produtos---'

    PRODUTOS.each do |produto, value|
      puts "#{produto} - #{SIMBOLO_MOEDA} #{value}"
    end

    puts '--------------'
  end

  def vender
    puts "O que deseja comprar"

    imprimir_produtos

    puts "Digite o nome do produtor"
    produto = gets.chomp

    puts "Para onde deseja enviar"
    imprimir_table_frete

    puts "Digite o Estado"
    estado = gets.chomp

    puts "Calculando..."
    valor_final = calcular_valor_final(PRODUTOS[produto], estado)

    puts "Vode deve pagar #{SIMBOLO_MOEDA} #{valor_final} do produto + frete"

    puts "Deseja pagar ? (s/n)"
    opcao = gets.chomp

    if opcao == "s"
      pagseguro = Pagamento::PagSeguro.new
      pagar(valor_final)
    else
      puts "beleza deixa para proxima"
    end



  end



end