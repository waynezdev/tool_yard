class RemoveConditionFromProduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :condition, :integer
  end
end
