ActiveAdmin.register Shit do

	controller do
    	def permitted_params
			params.permit shit: [:content]
    	end
  	end

end
