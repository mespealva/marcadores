class Webmark < ApplicationRecord
  belongs_to :cat
  belongs_to :type
  validates :cat_id, presence: true
  validates :type_id, presence: true
end
