class Bar < ApplicationRecord
  belongs_to :user
  validates :name, presence: true,
            length: {minimum: 3, maximum: 25}
  validates :address, presence: true,
            length: {minimum: 3, maximum: 50}
  validates :description, presence: true,
            length: {minimum: 10, maximum: 250}
end
