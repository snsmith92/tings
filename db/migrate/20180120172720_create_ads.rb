class CreateAds < ActiveRecord::Migration[5.0]
  def change
    create_table :ads do |t|
      t.string :title
      t.decimal :cost
      t.text :description
      t.integer :quantity
      t.string :phone
      t.string :email
      t.boolean :accepted
      t.integer :user_id
      t.timestamps
    end
    add_index :ads, :user_id
  end
end
