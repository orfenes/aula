class CreateAndresses < ActiveRecord::Migration
  def change
    create_table :andresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.references :contact, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
