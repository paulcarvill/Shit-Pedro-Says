class Shit < ActiveRecord::Base
	extend FriendlyId
  	friendly_id :content, use: :slugged

	def next
    	self.class.first(:conditions => ["id > ?", id], :order => "id asc")
  	end

  	def prev
    	self.class.first(:conditions => ["id < ?", id], :order => "id desc")
  	end
end
