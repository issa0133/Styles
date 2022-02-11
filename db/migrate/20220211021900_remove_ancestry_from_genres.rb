class RemoveAncestryFromGenres < ActiveRecord::Migration[5.2]
  def change
    remove_column :genres, :ancestry, :string
  end
end
