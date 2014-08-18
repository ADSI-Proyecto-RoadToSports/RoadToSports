class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  # GET /galleries
  # GET /galleries.json
  def index
    @galleries = Gallery.search(params[:search], params[:page])
  end

  # GET /galleries/1
  # GET /galleries/1.json
  def show
    @galleries = Gallery.find(params[:id])
  end

  # GET /galleries/new
  def new
    @gallery = Gallery.new
  end

  # GET /galleries/1/edit
  def edit
    @galleries = Gallery.find(params[:id])
  end

  # POST /galleries
  # POST /galleries.json
  def create
    @gallery = Gallery.new(gallery_params)
    render action: :new unless @gallery.save
  end

  # PATCH/PUT /galleries/1
  # PATCH/PUT /galleries/1.json
  def update
    render action: :edit unless @gallery.update_attributes(gallery_params)
  end

  # DELETE /galleries/1
  # DELETE /galleries/1.json
  def destroy
    @gallery.destroy
    respond_to do |format|
      format.html { redirect_to galleries_url, notice: 'La Imagen A Sido Eliminada Correctamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery
      @gallery = Gallery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gallery_params
      params.require(:gallery).permit(:image)
    end
end
