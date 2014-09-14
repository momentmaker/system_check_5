class Tasklist < ActiveRecord::Base
	has_many :associations
	has_many :users, through: :associations
	has_many :tasks, through: :associations, dependent: :destroy
	has_many :tasks, dependent: :destroy

	validates :name, presence: true
end