class Area < ActiveRecord::Base
	belongs_to :city
	has_many :priest_areaships
	has_many :priest_profiles, through: :priest_areaships
	scope :cityareas, lambda { |a|	where(["city_id = ?", a]) }
end
