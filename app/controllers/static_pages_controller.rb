class StaticPagesController < ApplicationController
  def home
    if signed_in?
      #@micropost = current_user.microposts.build
      @weigh_in = current_user.weigh_ins.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
end
