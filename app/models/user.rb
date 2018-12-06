class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  # has_many :orders
  # has_many :tickets, through: :orders
  # has_many :events #event_producer events
  # has_many :tickets, through: :events #event_producer sales
end
