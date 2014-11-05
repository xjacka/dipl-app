class Author < ActiveRecord::Base
	validates :firstname, :surname, presence: true
	has_many :theses
end
