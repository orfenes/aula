class AndressesController < ApplicationController
  before_action :set_andress, only: [:show, :edit, :update, :destroy]

  # GET /andresses
  # GET /andresses.json
  def index
    @andresses = Andress.all
  end

  # GET /andresses/1
  # GET /andresses/1.json
  def show
  end

  # GET /andresses/new
  def new
    @andress = Andress.new
  end

  # GET /andresses/1/edit
  def edit
  end

  # POST /andresses
  # POST /andresses.json
  def create
    @andress = Andress.new(andress_params)

    respond_to do |format|
      if @andress.save
        format.html { redirect_to @andress, notice: 'Andress was successfully created.' }
        format.json { render :show, status: :created, location: @andress }
      else
        format.html { render :new }
        format.json { render json: @andress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /andresses/1
  # PATCH/PUT /andresses/1.json
  def update
    respond_to do |format|
      if @andress.update(andress_params)
        format.html { redirect_to @andress, notice: 'Andress was successfully updated.' }
        format.json { render :show, status: :ok, location: @andress }
      else
        format.html { render :edit }
        format.json { render json: @andress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /andresses/1
  # DELETE /andresses/1.json
  def destroy
    @andress.destroy
    respond_to do |format|
      format.html { redirect_to andresses_url, notice: 'Andress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_andress
      @andress = Andress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def andress_params
      params.require(:andress).permit(:street, :city, :state, :contact_id)
    end
end
