class SearchesController < ApplicationController
  def new
    @search = Search.new
  end

  def create
    @search = Search.create!(search_params)
    redirect_to @search
  end


  def show
    @search = Search.find(params[:id])
    render :layout => 'style'
  end


  def search_params
    params.require(:search).permit(:title, :city_id, :min_price, :max_price, :space_setting_id,
                                   :atmosphere_id, :user_group_id, :rent_env_id)
  end
end
