class RemoveStateFromProduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :state, :integer
  end
end
