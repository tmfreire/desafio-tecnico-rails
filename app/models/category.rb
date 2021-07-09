class Category < ApplicationRecord
  belongs_to :bug

  NAMES = ["critico", "normal"]
  validates :name, inclusion: { in: NAMES }
  validates :age, inclusion: { in: 1..3 }, numericality: { only_integer: true }
end
