class User < ApplicationRecord
  before_save :format_username
  before_save :format_email

  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_movies, through: :favorites, source: :movie

  has_secure_password

  validates :name, presence: true
  validates :email,
            format: {
              with: /\S+@\S+/
            },
            uniqueness: {
              case_sensitive: false
            }
  validates :username,
            allow_blank: true,
            format: {
              with: /\A[A-Z0-9]+\z/i,
              message: 'can only contain letters and numbers'
            },
            uniqueness: {
              case_sensitive: false
            }

  # NOTE: `allow_blank` allows updates to the record without having to
  # speficy a password. If a password is specified, the length will be
  # validated, otherwise that validation is skipped. Note this only
  # applies to the length validation here, not the other 'magic' validations
  # provided by has_secure_password, which have their own rules:
  # https://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html#method-i-has_secure_password
  validates :password, length: { minimum: 10, allow_blank: true }

  scope :by_name, -> { order(name: :asc) }
  scope :admin, -> { by_name.where(admin: true) }
  scope :non_admin, -> { by_name.where(admin: false) }

  def to_param
    self.username
  end

  private

  def format_username
    self.username = self.username.downcase
  end

  def format_email
    self.email = self.email.downcase
  end
end
