class User < ActiveRecord::Base
  authenticates_with_sorcery!
  	has_many :pfutbols, :dependent => :destroy
  	validates :password, length: { minimum: 4, maximum: 8 }
  	validates :password, confirmation: true
  	validates :password_confirmation, presence: true
    
    validates :email, uniqueness: true
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: 'Formato no valido' }

    def self.search(search, page)
		where(['upper(email) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("id")
	end
end
