class Shit < ActiveRecord::Base

	def next
    	self.class.first(:conditions => ["id > ?", id], :order => "id asc")
  	end

  	def prev
    	self.class.first(:conditions => ["id < ?", id], :order => "id desc")
  	end
end
