class Generos < ActiveRecord::Migration[5.0]
  def change
    rename_table :categorias, :generos
  end
end
