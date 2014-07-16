class SpacesController < ApplicationController
  before_action :set_space, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :show]
  before_filter :correct_user, only: [:destroy, :edit]

  # GET /spaces
  # GET /spaces.json
  def index
    @spaces = Space.all
    #Padding code
    @current_user_spaces = current_user.spaces if user_signed_in?

    @search = Search.new

    render :layout => 'style'
  end

  # GET /spaces/1
  # GET /spaces/1.json
  def show
    @space = Space.find(params[:id])

    @space_photo = @space.photos

    @space_detailed = DetailedsSpaces.where(space_id: @space.id)

    @detailed = Detailed.all

  end

  # GET /spaces/new
  def new
    @space = Space.new
    @space.generate_token
  end

  # GET /spaces/1/edit
  def edit
  end

  # POST /spaces
  # POST /spaces.json
  def create
    @space = current_user.spaces.build(space_params)
    @space.photos << Photo.where(space_token: @space.token)

    respond_to do |format|
      if @space.save
        flash[:success] = "空间创建成功"
        format.html { redirect_to @space }
        format.json { render :show, status: :created, location: @space }
      else
        format.html { render :new }
        format.json { render json: @space.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spaces/1
  # PATCH/PUT /spaces/1.json
  def update
    logger.info(params)
    @space = Space.find(params[:id])
    respond_to do |format|
      if @space.update(space_params)
        flash[:info] = "空间更新成功！"
        format.html { redirect_to @space }
        format.json { render :show, status: :ok, location: @space }
      else
        format.html { render :edit }
        format.json { render json: @space.errors, status: :unprocessable_entity }
      end
    end

  end

  # DELETE /spaces/1
  # DELETE /spaces/1.json
  def destroy
    @space.destroy
    respond_to do |format|
      format.html { redirect_to spaces_url, notice: 'Space was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_space
      @space = Space.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def space_params
      params.require(:space).permit(:title, :space_setting_id, :num_of_people_id, :content, :address, :token,
                                    :atmosphere_id, :city_id, :price_hour, :price_day, :price_month, :price_year,
                                    :detailed_ids => [], :user_group_ids => [], :rent_env_ids => [], photos_attributes: [:data] )
    end

    def correct_user
      @space = current_user.spaces.find_by(id: params[:id])
      redirect_to root_url if @space.nil?
    end
end