class Employer < ActiveRecord::Base
	
  attr_accessible :name, :slug, :nominated_charity, :matching, :cause_ids, :colour_1, :colour_2, :logo
  
	has_many :employees
	has_and_belongs_to_many :causes
	
	validates_presence_of :name

	extend FriendlyId
  friendly_id :name, :use => :slugged

end