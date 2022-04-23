class PhotosController < ApplicationController
  def show
    @photo = Photo.find(params[:id])
  end

  # Metodos de paulo
  # GET /departments/new
  def new
    @photo = Photo.new
  end

  # POST /departments
  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      redirect_to photo_path(@photo)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # GET /photos/:id/edit
  def edit
    @photo = Photo.find(params[:id])
    # render edit
  end

  # PATCH/PUT /photos/:id
  def update
    @photo = Photo.find(params[:id])

    if @photo.update(photo_params)
      redirect_to photos_path
    else
      render "edit", status: :unprocessable_entity
    end
  end

  # DELETE /photos/:id
  def destroy
    @photo = Photo.find(params[:id])
    @photo.delete

    redirect_to category_path, status: :see_other
  end

  private

  def photo_params
    params.require(:photo).permit(
      :title,
      :subtitle,
      :category_id,
      :avatar
    )
  end

end
