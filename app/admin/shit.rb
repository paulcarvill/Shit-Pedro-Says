ActiveAdmin.register Shit do

	controller do
    	def permitted_params
		params.permit shit: [:content]
    	end
  	end

  	# tweet the newly created Shit out using the @shit_pedro_says account
  	after_create do |shit|
  		begin
    		Twitter.update("#{@shit.content}")
    	rescue
    		logger.info("no twitter app creds!")
    	end
  	end

end




