class CreateSeas < ActiveRecord::Migration[5.1]
  def change
    create_table :seas do |t|
      t.string :name
      t.float :temperature
      t.text :bio
      t.string :image_url
      t.string :string
      t.string :mood
      t.string :favourite_color
      t.string :scariest_create
      t.boolean :has_mermaids
    end
  end
end
