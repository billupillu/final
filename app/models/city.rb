class City < ActiveRecord::Base
	has_many :areas
	scope :citysearch, lambda { |a| where(["name LIKE ?", "#{a}%"])  } 
	scope :loid, lambda { |ak| where(["name = ?", ak]) }
end
