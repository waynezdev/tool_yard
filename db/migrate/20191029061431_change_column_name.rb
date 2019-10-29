class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :conditionn, :condition
  end
end
