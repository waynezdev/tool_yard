class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :suburb
      t.string :state
      t.integer :postcode
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
