class Experience < ActiveRecord::Base
  validates :customer, :presence => true
  validates :location, :presence => true
  validates :description, :presence => true


	belongs_to :company
end
