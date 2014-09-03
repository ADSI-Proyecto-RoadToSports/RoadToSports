class User < ActiveRecord::Base
  authenticates_with_sorcery!
  	has_many :pfutbols, :dependent => :destroy
  	validates :password, length: { minimum: 4, maximum: 8 }
  	validates :password, confirmation: true
  	validates :password_confirmation, presence: true
    
    validates :email, uniqueness: true
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: 'Formato no valido' }
end
