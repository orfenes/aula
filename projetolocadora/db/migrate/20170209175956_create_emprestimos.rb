class CreateEmprestimos < ActiveRecord::Migration
  def change
    create_table :emprestimos do |t|
      t.references :cliente, index: true, foreign_key: true
      t.references :dvd, index: true, foreign_key: true
      t.datetime :data_retirada
      t.datetime :date_devolucao
      t.string :observacoes

      t.timestamps null: false
    end
  end
end
