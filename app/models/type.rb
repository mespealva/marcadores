class Type < ApplicationRecord
    has_many :webmarks
    validates :name, presence: true
end
