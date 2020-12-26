class Task < ApplicationRecord
  belongs_to :user
  has_many :comments

  PRIORITY = ["TOP PRIO","HIGH PRIO","MEDIUM PRIO","TO DO","NOT SO IMPORTANT","SUPERFICIAL"]

  validates :title, presence: true
  validates :deadline, presence: true
  validates :priority_order, presence: true


end
