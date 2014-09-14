class Task < ActiveRecord::Base
	has_many :associations
	has_one :user, through: :associations
	belongs_to :tasklist

	validates :name, presence: true
end