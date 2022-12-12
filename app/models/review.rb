class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :user

  validates :comment, length: { minimum: 4 }
  STARS = [1, 2, 3, 4, 5].freeze
  validates :stars, inclusion: { in: STARS }

  scope :recent, ->(max = 3) { Review.where('created_at > ?', max.days.ago) }

  def stars_as_percent
    stars / 5.0 * 100
  end
end
