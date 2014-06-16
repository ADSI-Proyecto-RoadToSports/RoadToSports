class Gallery < ActiveRecord::Base
	attr_accessor :image
	has_attached_file :image, styles: { medium: '550x550>', thumb: '105x105>' }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
