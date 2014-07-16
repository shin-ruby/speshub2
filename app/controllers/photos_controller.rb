class PhotosController < ApplicationController
  def index

  end

  def new
    @photo = Photo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @upload }
    end
  end

  def create
    @photo = Photo.new(photo_params)

    respond_to do |format|
      if @photo.save
        format.html {
          render :json => [@photo.to_jq_upload].to_json,
                 :content_type => 'text/html',
                 :layout => false
        }
        format.json { render json: {files: [@photo.to_jq_upload]}, status: :created, location: @photo }
      else
        format.html { render action: "new" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end


  def edit
    #logger.info("*** photo id: #{params[:id]}")
    @photo = Photo.find(params[:id])
    #logger.info("*** photo id: #{@photo.id}")
  end


  def update
    @photo = Photo.find(params[:id])

      if @photo.update(photo_params)
       redirect_to edit_space_path(@photo.space_id)
      end
  end

  def destroy
    @photo = Photo.find(params[:id])
    if @photo.destroy
      redirect_to edit_space_path(@photo.space_id)
      # @space = @photo.space
      # render 'spaces#edit'
    end
  end


  def photo_params
    params.require(:photo).permit(:data, :space_token)
  end
end
