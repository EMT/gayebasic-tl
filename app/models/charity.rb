class Charity < ActiveRecord::Base

  attr_accessible :name
  
  validates_presence_of :name

	extend FriendlyId
	friendly_id :name, :use => :slugged
	
end
