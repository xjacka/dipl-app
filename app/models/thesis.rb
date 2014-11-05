class Thesis < ActiveRecord::Base
	validates :name, :abstract, presence: true
	belongs_to :author

end
