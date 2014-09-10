class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show, :edit, :update, :destroy, :index, :new, :create]
  skip_before_action :verify_authenticity_token
  load_and_authorize_resource
  # GET /galleries
  # GET /galleries.json
  def index
    @galleries = @album.galleries.all
  end

  # GET /galleries/1
  # GET /galleries/1.json
  def show
  
  @album = Album.find(params[:album_id])
   @gallery = Gallery.find(params[:id])
   
   
  end

  # GET /photos/new
  def new
    @album = Album.find(params[:album_id])
    @gallery = Gallery.new
  end

  # GET /galleries/1/edit
  def edit

  end

  # POST /galleries
  # POST /galleries.json
  def create
    @album = Album.find(params[:album_id])
    @gallery = @album.galleries.new(gallery_params)
    respond_to do |format|
      if @gallery.save
        format.html { redirect_to album_galleries_path(@album) }
        format.json { render :show, status: :created, location: @gallery }
      else
        format.html { render :new }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end
    #render action: :new unless @gallery.save
  end

  # PATCH/PUT /galleries/1
  # PATCH/PUT /galleries/1.json
  def update
    respond_to do |format|
      if @gallery.update(gallery_params)
        format.html { redirect_to album_galleries_path(@album) }
        format.json { render :show, status: :ok, location: @gallery }
      else
        format.html { render :edit }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end
    #render action: :edit unless @gallery.update_attributes(gallery_params)
  end

  # DELETE /galleries/1
  # DELETE /galleries/1.json
  def destroy
    @gallery.destroy
    respond_to do |format|
      format.html { redirect_to album_galleries_url(@album), notice: 'La Imagen A Sido Eliminada Correctamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery
      @album = Album.find(params[:album_id])
      @gallery = Gallery.find(params[:id]) if params[:id] 
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gallery_params
      params.require(:gallery).permit(:image)
    end
end
