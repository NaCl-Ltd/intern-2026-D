class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      #@feed_items = current_user.feed.paginate(page: params[:page])
      feed = current_user.feed
      @pined = feed.find_by(pin: true)
      if(@pined!=nil)
        @feed_items = current_user.feed.where.not(id: @pined.id).paginate(page: params[:page])
      else
        @feed_items = current_user.feed.paginate(page: params[:page])
      end
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
