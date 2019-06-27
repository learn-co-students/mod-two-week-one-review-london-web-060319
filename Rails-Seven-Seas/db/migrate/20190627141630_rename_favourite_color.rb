class RenameFavouriteColor < ActiveRecord::Migration[5.1]
  def change
    rename_column :seas, :favourite_color, :favorite_color
  end
end
