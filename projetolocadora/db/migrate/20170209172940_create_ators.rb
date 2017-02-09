class CreateAtors < ActiveRecord::Migration
  def change
    create_table :ators do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
