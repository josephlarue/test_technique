class Task < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :priority_order, presence: true
  validates :priority_order, uniqueness: true

end
