class AdjustFavouritesTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :favourites, :ad_id
    remove_column :favourites, :user_id
    add_reference :favourites, :user, index: true
    add_reference :favourites, :favourited, polymorphic: true, index: true
  end
end
