class Genre < ApplicationRecord
  has_many :post_images, dependent: :destroy

  validates :name, presence: {message: "を選んでください"}

end
