class PriestProfile < ActiveRecord::Base
	
	validates :phone_wrk,:name, presence: true
	has_many :priest_areaships
	has_many :areas, through: :priest_areaships
	has_attached_file :icon, styles: {medium: "320x240>",thumb: "100x100>"}
    validates_attachment_content_type :icon, content_type: /\Aimage\/.*\Z/
    validates_with AttachmentSizeValidator, attributes: :icon, less_than: 4.megabytes
	attr_accessor :city_id, :area_id, :area_ids
end

