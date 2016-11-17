class Course < ApplicationRecord

  has_many :course_subscriptions
  has_many :users, through: :course_subscriptions


  has_many :lessons

end
