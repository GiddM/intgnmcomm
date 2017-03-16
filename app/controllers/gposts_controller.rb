class GpostsController < ApplicationController
  before_action :set_gpost, only: [:show, :edit, :update, :destroy]

  # GET /gposts
  # GET /gposts.json
  def index
    @gposts = Gpost.all
  end

  # GET /gposts/1
  # GET /gposts/1.json
  def show
  end

  # GET /gposts/new
  def new
    @gpost = Gpost.new
  end

  # GET /gposts/1/edit
  def edit
  end

  # POST /gposts
  # POST /gposts.json
  def create
    @gpost = Gpost.new(gpost_params)

    respond_to do |format|
      if @gpost.save
        format.html { redirect_to @gpost, notice: 'Gpost was successfully created.' }
        format.json { render :show, status: :created, location: @gpost }
      else
        format.html { render :new }
        format.json { render json: @gpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gposts/1
  # PATCH/PUT /gposts/1.json
  def update
    respond_to do |format|
      if @gpost.update(gpost_params)
        format.html { redirect_to @gpost, notice: 'Gpost was successfully updated.' }
        format.json { render :show, status: :ok, location: @gpost }
      else
        format.html { render :edit }
        format.json { render json: @gpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gposts/1
  # DELETE /gposts/1.json
  def destroy
    @gpost.destroy
    respond_to do |format|
      format.html { redirect_to gposts_url, notice: 'Gpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gpost
      @gpost = Gpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gpost_params
      params.require(:gpost).permit(:address, :type, :price, :description, :image_url)
    end
end
