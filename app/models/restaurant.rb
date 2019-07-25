class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
#  has a phone number (FAILED - 1)
# should destroy child reviews when destroying self (FAILED - 2)


# didnt workout
# class Restaurant < ApplicationRecord
#   validates :name, uniqueness: true, presence: true
#   validates :address, presence: true
#   validates :category, inclusion: { in: [:chinese, :italian, :japanese, :french, :belgian] }
#   has_many :reviews, dependent: :destroy
# end
