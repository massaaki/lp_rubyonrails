class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :course_subscriptions
  has_many :courses, through: :course_subscriptions
end
