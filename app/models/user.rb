class User < ActiveRecord::Base
	has_many :associations
	has_many :tasklists, through: :associations
	has_many :tasks, through: :associations

	validates :email, presence: true
end