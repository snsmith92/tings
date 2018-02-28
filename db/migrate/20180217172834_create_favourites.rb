class CreateFavourites < ActiveRecord::Migration[5.0]
  def change
    create_table :favourites do |t|
      t.integer :ad_id
      t.integer :user_id
      t.timestamps
    end
    add_index :favourites, :user_id
    add_index :favourites, :ad_id
  end
end
