class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  # GET /albums
  # GET /albums.json
  def index
    @albums = Album.all
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
    @album = Album.find(params[:id])
  end

  # GET /albums/new
  def new
    @album = Album.new
  end

  # GET /albums/1/edit
  def edit
    @album = Album.find(params[:id])
  end

  # POST /albums
  # POST /albums.json
  def create
    @album = Album.new(album_params)
    #render action: :new unless @album.save
    respond_to do |format|
      if @album.save
        format.html { redirect_to albums_path}
        format.json { render :show, status: :created, location: @album }
      else
        format.html { render :new }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albums/1
  # PATCH/PUT /albums/1.json
  def update
    #render action: :edit unless @album.update_attributes(album_params)
    respond_to do |format|
      if @album.update(album_params)
        format.html { redirect_to albums_path}
        format.json { render :show, status: :ok, location: @album }
      else
        format.html { render :edit }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albums/1
  # DELETE /albums/1.json
  def destroy
    @album.destroy
    respond_to do |format|
      format.html { redirect_to albums_url, notice: 'El Album ha sido eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @album = Album.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def album_params
      params.require(:album).permit(:title, :description, :image)
    end
end
