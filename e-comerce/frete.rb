module Frete
  TABELA_FRETE = {
    "BA" => 1.95,
    "SP" => 3.87,
    "PE" => 2.56
  }

  def imprimir_table_frete
      puts '=============Tabela Frete====================='

      TABELA_FRETE.each do |estado, preco|
        puts "#{estado} - #{preco}"
      end

      puts '=============================================='
  end



  def calcular_valor_final(valor_produto, uf)
    valor_produto * TABELA_FRETE[uf]
  end

end