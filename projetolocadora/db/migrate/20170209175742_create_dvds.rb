class CreateDvds < ActiveRecord::Migration
  def change
    create_table :dvds do |t|
      t.references :filme, index: true, foreign_key: true
      t.string :observacoes

      t.timestamps null: false
    end
  end
end
