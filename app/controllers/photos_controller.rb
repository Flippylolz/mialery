class PhotosController < ApplicationController
  before_action :set_photo, only: %i(show edit update destroy)

  def index
    @photos = current_album.photos.all
  end

  def show; end

  def new
    @photo = current_album.photos.new
  end

  def edit; end

  def create
    @photo = current_album.photos.new(photo_params)

    respond_to do |format|
      if @photo.save
        format.html { redirect_to [current_album, @photo], notice: 'Photo was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to [current_album, @photo], notice: 'Photo was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to album_photos_url(current_album), notice: 'Photo was successfully destroyed.' }
    end
  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:id, :image)
  end
end
