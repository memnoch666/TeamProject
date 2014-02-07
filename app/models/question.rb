class Question < ActiveRecord::Base
	validates :title, :scenario, :answer, :level, presence: true
	validates :title, uniqueness: true
	validates :level, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 3}
end
