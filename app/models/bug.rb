class Bug < ApplicationRecord
  has_one :category

  validates :title, presence: true
end
