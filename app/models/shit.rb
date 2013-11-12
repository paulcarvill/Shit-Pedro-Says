class Shit < ActiveRecord::Base
	extend FriendlyId
  	friendly_id :first_five_words, use: :slugged

  	def first_five_words
  		content.split(/\s+/)[0..4].compact.join(" ")
	end

	def should_generate_new_friendly_id?
    	true
  	end

	def next
    	self.class.first(:conditions => ["id > ?", id], :order => "id asc")
  	end

  	def prev
    	self.class.first(:conditions => ["id < ?", id], :order => "id desc")
  	end
end
