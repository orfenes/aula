class Renametable < ActiveRecord::Migration[5.0]
  def change
    rename_table :categoria, :categorias
  end
end
