class AddPhotosToWeapons < ActiveRecord::Migration[5.2]
  def change
    add_column :weapons, :photos, :string
  end
end
