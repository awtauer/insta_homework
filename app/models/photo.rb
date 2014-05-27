class Photo < ActiveRecord::Base
 validates :source, :presence => true

 	has_many :comments
 	belongs_to :user

	has_many :favorites
	has_many :fans, :through => :favorites, :source => :user
end
