class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: {scope: :list_id, message: "has already been bookmarked for this list" }

  belongs_to :list
  belongs_to :movie
end
