class MoneypostsController < ApplicationController
  before_action :set_moneypost, only: [:show, :edit, :update, :destroy]

  # GET /moneyposts
  # GET /moneyposts.json
  def index
    @moneyposts = Moneypost.all
  end

  # GET /moneyposts/1
  # GET /moneyposts/1.json
  def show
  end

  # GET /moneyposts/new
  def new
    @moneypost = Moneypost.new
  end

  # GET /moneyposts/1/edit
  def edit
  end

  # POST /moneyposts
  # POST /moneyposts.json
  def create
    @moneypost = Moneypost.new(moneypost_params)

    respond_to do |format|
      if @moneypost.save
        format.html { redirect_to @moneypost, notice: 'Moneypost was successfully created.' }
        format.json { render :show, status: :created, location: @moneypost }
      else
        format.html { render :new }
        format.json { render json: @moneypost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moneyposts/1
  # PATCH/PUT /moneyposts/1.json
  def update
    respond_to do |format|
      if @moneypost.update(moneypost_params)
        format.html { redirect_to @moneypost, notice: 'Moneypost was successfully updated.' }
        format.json { render :show, status: :ok, location: @moneypost }
      else
        format.html { render :edit }
        format.json { render json: @moneypost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moneyposts/1
  # DELETE /moneyposts/1.json
  def destroy
    @moneypost.destroy
    respond_to do |format|
      format.html { redirect_to moneyposts_url, notice: 'Moneypost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moneypost
      @moneypost = Moneypost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def moneypost_params
      params.require(:moneypost).permit(:address, :type, :price, :description, :image_url)
    end
end
