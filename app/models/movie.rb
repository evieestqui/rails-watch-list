class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :restrict_with_error # Prevent deletion if bookmarks exist
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
