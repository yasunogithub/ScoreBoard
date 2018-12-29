class Score < ApplicationRecord
  has_many :results
  validates :title, presence: true,
            length: { minimum: 5 }
end
