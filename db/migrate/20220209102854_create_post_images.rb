class CreatePostImages < ActiveRecord::Migration[5.2]
  def change
    create_table :post_images do |t|
      t.references :user, foreign_key: true
      t.references :genre,foreign_key: true
      t.string :image_id
      t.string :title
      t.text :introduction

      t.timestamps
    end
  end
end
