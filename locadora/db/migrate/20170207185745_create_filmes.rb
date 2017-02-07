class CreateFilmes < ActiveRecord::Migration[5.0]
  def change
    create_table :filmes do |t|
      t.string :nome
      t.string :ano
      t.string :categoria

      t.timestamps
    end
  end
end
