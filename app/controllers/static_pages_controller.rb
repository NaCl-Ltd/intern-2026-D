class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed

      if params[:category].present?
        if params[:category] == "none"
          @feed_items = @feed_items.where(category: nil)
        else
          @feed_items = @feed_items.where(category: params[:category])
        end
      end

      @pined = @feed_items.find_by(pin: true)

      if @pined
        @feed_items = @feed_items.where.not(id: @pined.id).paginate(page: params[:page])
      else
        @feed_items = @feed_items.paginate(page: params[:page])
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
