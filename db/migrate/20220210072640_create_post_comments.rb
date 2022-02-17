class CreatePostComments < ActiveRecord::Migration[5.2]
  def change
    create_table :post_comments do |t|
      t.integer :user_id, foreign_key: true
      t.integer :post_image_id, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
