class Relationsfilme < ActiveRecord::Migration[5.0]
  def change
    add_reference :filmes, :generos, index: true, foreign_key: true
  end
end
