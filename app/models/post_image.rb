class PostImage < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  attachment :image
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :image, presence: {message: "を選んでください"}
  validates :title, presence: true
  validates :introduction, presence: true

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

end
