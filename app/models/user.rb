class User < ApplicationRecord
  # todo: add column for this
  enum :role, [ :admin, :customer ]

  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  # belongs_to :business
end
