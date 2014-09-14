class Association < ActiveRecord::Base
	belongs_to :user
	belongs_to :task
	belongs_to :tasklist
end