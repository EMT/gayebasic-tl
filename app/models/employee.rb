class Employee < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
	
	scope :unapproved, where(:approved => false)
	
  attr_accessible :name, :slug, :nominated_charity, :deduction, :employer_id, :approved, :ni, :opt_in, :address, :email, :password, :number
  
	belongs_to :employer
	
	validates_presence_of :name

	extend FriendlyId
  friendly_id :name, :use => :slugged

end