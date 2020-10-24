class Tea < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, presence: true
  validates :category, presence: true
end
