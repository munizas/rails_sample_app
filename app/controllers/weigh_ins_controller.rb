class WeighInsController < ApplicationController
  def index
  end
  
  def create
    @mweigh_in = current_user.weigh_ins.build(weigh_in_params)
    if @mweigh_in.save
      flash[:success] = "WeighIn created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end
  
  private

    def weigh_in_params
      params.require(:weigh_in).permit(:day, :weight, :percent_body_fat)
    end
end