class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.references :brand, foreign_key: true
      t.text :description
      t.integer :price
      t.integer :conditionn
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
