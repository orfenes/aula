class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :usuarios, :nome, :name
  end
end
