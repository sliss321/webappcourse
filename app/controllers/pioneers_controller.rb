class PioneersController < ApplicationController
  before_action :set_pioneer, only: [:show, :edit, :update, :destroy]

  # GET /pioneers
  # GET /pioneers.json
  def index
    @pioneers = Pioneer.all
  end

  # GET /pioneers/1
  # GET /pioneers/1.json
  def show
  end

  # GET /pioneers/new
  def new
    @pioneer = Pioneer.new
  end

  # GET /pioneers/1/edit
  def edit
  end

  # POST /pioneers
  # POST /pioneers.json
  def create
    @pioneer = Pioneer.new(pioneer_params)

    respond_to do |format|
      if @pioneer.save
        format.html { redirect_to @pioneer, notice: 'Pioneer was successfully created.' }
        format.json { render :show, status: :created, location: @pioneer }
      else
        format.html { render :new }
        format.json { render json: @pioneer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pioneers/1
  # PATCH/PUT /pioneers/1.json
  def update
    respond_to do |format|
      if @pioneer.update(pioneer_params)
        format.html { redirect_to @pioneer, notice: 'Pioneer was successfully updated.' }
        format.json { render :show, status: :ok, location: @pioneer }
      else
        format.html { render :edit }
        format.json { render json: @pioneer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pioneers/1
  # DELETE /pioneers/1.json
  def destroy
    @pioneer.destroy
    respond_to do |format|
      format.html { redirect_to pioneers_url, notice: 'Pioneer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pioneer
      @pioneer = Pioneer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pioneer_params
      params.require(:pioneer).permit(:first_name, :last_name)
    end
end
