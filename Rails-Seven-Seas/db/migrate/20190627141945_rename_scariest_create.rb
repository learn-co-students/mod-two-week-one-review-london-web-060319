class RenameScariestCreate < ActiveRecord::Migration[5.1]
  def change
      rename_column :seas, :scariest_create, :scariest_creature
  end
end
