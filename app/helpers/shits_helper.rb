module ShitsHelper
  def twitter_feed
      Twitter.user_timeline()
  end
end
