class Bug < ApplicationRecord
  has_one :category

  validates :title, presence: true

  def self.todaysbugs
    Bug.all.filter do |bug|
      bug.category.name == 'critico' || bug.category.age >= 3
    end
  end
end
