class AddPhotosToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :photos, :string
  end
end
