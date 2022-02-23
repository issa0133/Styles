class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :post_images, dependent: :destroy
  has_many :post_commnets, dependent: :destroy
  has_many :favorites, dependent: :destroy
  attachment :image

  has_many :relationships, foreign_key: :follower_id, dependent: :destroy
  has_many :followers, through: :relationships, source: :followed
  has_many :reverse_of_relationships, class_name: "Relationship", foreign_key: :followed_id, dependent: :destroy
  has_many :followeds, through: :reverse_of_relationships, source: :follower

  validates :name, presence: {message: "は必須項目です"}

  def is_followed_by?(user)
    reverse_of_relationships.find_by(follower_id: user.id).present?
  end

end
