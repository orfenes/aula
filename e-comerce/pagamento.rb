module Pagamento
  SIMBOLO_MOEDA = "R$"

  def pagar(valor_final)
    puts "Deseja pagar com cartao (s/n)"
    opcao = gets.chomp

    if opcao == "s"
      puts "Pagando com cartao"
    else
      puts "Pagando com dinheiro"
    end
  end


  class PagSeguro
    def initialize
      puts "Usando PagSeguro"
    end
  end


end