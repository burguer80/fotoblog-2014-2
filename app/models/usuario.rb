class Usuario < ActiveRecord::Base
  attr_accessible :email, :nombre, :password_digest
  has_secure_password
  validates_presence_of :password_digest, :on => :create
  validates_presence_of :nombre, :email
  has_many :fotos
end
