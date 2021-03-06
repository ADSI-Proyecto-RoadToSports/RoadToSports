class User < ActiveRecord::Base
  authenticates_with_sorcery!
  	has_many :pfutbols, :dependent => :destroy
    has_many :pbaloncestos, :dependent => :destroy
  	validates :password, length: { minimum: 4, maximum: 10 }
  	validates :password, confirmation: true
  	validates :password_confirmation, presence: true
    
    validates :email, uniqueness: true
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: 'Formato no valido' }
    belongs_to :document_type, :foreign_key => 'document_type_id'
    def self.search(search, page)
		where(['upper(nombre) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 20).order("id")
	end
end
