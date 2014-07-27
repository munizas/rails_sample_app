class WeighInsController < ApplicationController
  def index
  end
  
  def create
    @weigh_in = current_user.weigh_ins.build(weigh_in_params)
    w = WeighIn.find_by(user_id: @weigh_in.user_id, day: @weigh_in.day)
    if not w.nil?
      w.weight = @weigh_in.weight
      w.percent_body_fat = @weigh_in.percent_body_fat
      w.save
      flash[:success] = "WeighIn updated!"
      redirect_to root_url
    elsif @weigh_in.save
      flash[:success] = "WeighIn created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end
  
  private

    def weigh_in_params
      params.require(:weigh_in).permit(:day, :weight, :percent_body_fat, :note)
    end
end