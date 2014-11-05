class Faculty < ActiveRecord::Base
	validates :name, uniqueness: true
end
