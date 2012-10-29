require 'carrierwave/orm/activerecord'
class Bid < ActiveRecord::Base
  
validates :description, :length => { :within => 10..150 }
validates :buyer, :presence => true
validates :location, :presence => true
validates :sector, :presence => true
validates :description, :presence => true
validates :name, :presence => true
validates :email, :presence => true
validates :attachment, :presence => true
#has_attached_file :attachment
belongs_to :user
mount_uploader :attachment, AttachmentUploader
end
