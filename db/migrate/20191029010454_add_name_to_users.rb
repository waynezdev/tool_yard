class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :account_type, :integer
    add_column :users, :mobile, :string
  end
end
