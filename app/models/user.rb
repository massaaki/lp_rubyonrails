class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :course_subscriptions
  has_many :courses, through: :course_subscriptions

	protected
	def confirmation_required?
	  true
	end


end
