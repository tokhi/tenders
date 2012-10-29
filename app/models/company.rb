class Company < ActiveRecord::Base
  validates :org_name, :presence => true
  validates :service_description, :presence => true
  validates :isa_license, :presence => true
  validates :address, :presence => true
  validates :email, :presence => true
  
	belongs_to :user
	#attr_accessible :partners_attributes
	has_many :partners, :dependent => :destroy
	accepts_nested_attributes_for :partners, :allow_destroy => :true
	has_many :experiences, :dependent => :destroy
	accepts_nested_attributes_for :experiences, :allow_destroy => :true
	has_and_belongs_to_many :categories
	simple_search :org_name, :service_description
	scope :reg, where("companies.reg_date IS NOT NULL")
	scope :recent, lambda { reg.where("companies.reg_date > ?",
1.week.ago.to_date)}

end
