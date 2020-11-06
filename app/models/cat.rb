class Cat < ApplicationRecord
  belongs_to :cat, optional: true
  has_many :cats
  has_many :webmarks
end
