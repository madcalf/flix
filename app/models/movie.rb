class Movie < ApplicationRecord

  before_save :set_slug

  RATINGS = %w[G PG PG-13 R NC-17].freeze

  has_many :reviews, dependent: :destroy
  has_many :critics, through: :reviews, source: :user

  has_many :favorites, dependent: :destroy
  has_many :fans, through: :favorites, source: :user

  has_many :characterizations, dependent: :destroy
  has_many :genres, through: :characterizations

  validates :title, presence: true, uniqueness: true
  validates :released_on, :duration, presence: true
  validates :description, length: { minimum: 25 }
  validates :total_gross, numericality: { greater_than_or_equal_to: 0 }
  validates :rating, inclusion: { in: RATINGS }
  validates :image_file_name,
            format: {
              with: /\w+\.(jpg|png)\z/i,
              message: 'must be a JPG or PNG image'
            }

  scope :released,
        -> { where('released_on < ?', Time.now).order('released_on DESC') }

  scope :upcoming,
        -> { where('released_on > ?', Time.now).order('released_on') }

  scope :recent, ->(max = 4) { released.limit(max) }

  scope :flops,
        -> {
          released.where(total_gross: ..550_000_000).order(total_gross: :desc)
        }

  scope :hits,
        -> {
          released.where(total_gross: 550_000_000..).order(total_gross: :desc)
        }

  scope :grossed_less_than,
        ->(amt = 250_000_000) { released.where('total_gross < ?', amt) }

  scope :grossed_greater_than,
        ->(amt = 500_000_000) { released.where('total_gross > ?', amt) }

  def average_stars
    reviews.average(:stars) || 0
  end

  def average_stars_as_percent
    average_stars / 5 * 100
  end

  def released?
    released_on > Time.now
  end

  def cult_classic?
    return false unless released?

    reviews.count > 3 && reviews.average(:stars) >= 4
  end

  def flop?
    return false unless released?
    return false if cult_classic?

    (total_gross.blank? || total_gross < 550_000_000)
  end

  def to_param
    self.slug
  end

  private

  def set_slug
    self.slug = title.parameterize
  end
end
