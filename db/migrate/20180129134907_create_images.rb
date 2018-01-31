class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.integer :image_id
      t.text :caption
      t.integer :user_id
      t.integer :ad_id
      t.timestamps
    end
    add_index :images,[:user_id, :ad_id]
    add_index :images, :ad_id
  end
end
