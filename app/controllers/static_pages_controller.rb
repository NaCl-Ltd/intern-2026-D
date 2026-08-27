class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed
      if params[:category].present?
        @feed_items = @feed_items.where(category: params[:category])
      end
      @feed_items = @feed_items.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
