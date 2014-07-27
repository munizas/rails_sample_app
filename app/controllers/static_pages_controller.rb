class StaticPagesController < ApplicationController
  def home
    if signed_in?
      #@micropost = current_user.microposts.build
      @weigh_in = current_user.weigh_ins.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      @current_user_id = current_user.id
      sDate = params[:start_date]
      if sDate.nil?
        @start_date = 3.weeks.ago.to_date
      else
        @start_date = sDate
      end
      
      eDate = params[:end_date]
      if eDate.nil?
        @end_date = Date.today
      else
        @end_date = eDate
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
