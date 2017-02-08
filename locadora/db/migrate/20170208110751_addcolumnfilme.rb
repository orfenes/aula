class Addcolumnfilme < ActiveRecord::Migration[5.0]
  def change
    add_column :filmes, :disponivel, :boolean
  end
end
