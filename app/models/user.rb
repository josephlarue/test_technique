class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tasks

  validates :email, uniqueness: true
  validates :email, format: { with: /\A.*@.*\.(en|edu|de|fr|com)\z/ }
end
