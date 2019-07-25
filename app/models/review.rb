class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end

# dependent: :destroy
 # class Review < ApplicationRecord
 #  validates :content, presence: true
 #  validates :rate, presence: true, numericality: { only_integer: true }
 #  validates :rate, inclusion: { in: [0, 1, 2, 3, 4, 5] }
 #  has_many :restaurants, presence: true
 #  end
  # has a rating (stored as integer) (FAILED - 3)
  # content cannot be blank (FAILED - 4)
  # rating cannot be blank (FAILED - 5)
  # parent restaurant cannot be nil (FAILED - 6)
  # rating should be an integer (FAILED - 7)
  # rating should be a number between 0 and 5 (FAILED - 8)
