class Author < ActiveRecord::Base
	validates :firstname, :surname, presence: true
end
