class CreateFilmesAtors < ActiveRecord::Migration
  def change
    create_table :filmes_ators do |t|
      t.references :filme, index: true, foreign_key: true
      t.references :ator, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
