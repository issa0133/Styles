class CreatePostImages < ActiveRecord::Migration[5.2]
  def change
    create_table :post_images do |t|
      t.integer :user_id, foreign_key: true
      t.integer :genre_id,foreign_key: true
      t.string :image_id
      t.string :title
      t.text :introduction

      t.timestamps
    end
  end
end
