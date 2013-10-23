module ShitsHelper
  def twitter_feed
      Twitter.user_timeline() #limits array to 5 items
  end
end
