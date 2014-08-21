class Gallery < ActiveRecord::Base
	attr_accessor :image
	has_attached_file :image, styles: { medium: '550x550>', thumb: '105x105>' }, notice: 'El Tamaño de la imagen no es el correcto'
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	# Validaciones de Paperclip
  	validates_attachment_size :image, :less_than => 2.megabytes
  	validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png'], notice: 'El Formato de la imagen no es el correcto'
	def self.search(search, page)
		where(['upper(id) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 8).order("id")
	end
end
