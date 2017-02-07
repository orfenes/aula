class Generos < ActiveRecord::Migration[5.0]
  def change
    rename_table :categoria, :generos
  end
end
