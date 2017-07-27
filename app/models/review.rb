class Review < ApplicationRecord
  belongs_to :pizza
  validates :title, :body, presence: true
end
