ActiveAdmin.register Shit do

	controller do
    def permitted_params
			params.permit shit: [:content]
    end
  end


  after_create do |shit|
    logger.info "http://www.shitpedrosays.com/shits/#{@shit.id}"
    logger.info "#{@shit.content}"
  # do tweeting here
    Twitter.update("#{@shit.content}")
  end

  after_update do |shit|
    logger.info "http://www.shitpedrosays.com/shits/#{@shit.id}"
    logger.info "#{@shit.content}"
    Twitter.update("#{@shit.content}")
    # Only tweet if it doesnt match existing tweet
    # Twitter.user_timeline().each do |tweet|
    #   if tweet.text===shit.content
    #     Twitter.update("#{@shit.content}")
    #   end
    # end
  end

end




