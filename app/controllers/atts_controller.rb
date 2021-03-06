class AttsController < ApplicationController
  before_action :set_att, only: [:show, :edit, :update, :destroy]

  # GET /atts
  # GET /atts.json
  def index
    @atts = Att.all
  end

  # GET /atts/1
  # GET /atts/1.json
  def show
  end

  # GET /atts/new
  def new
    @att = Att.new
  end

  # GET /atts/1/edit
  def edit
  end

  # POST /atts
  # POST /atts.json
  def create
    @att = Att.new(att_params)

    respond_to do |format|
      if @att.save
        format.html { redirect_to @att, notice: 'Att was successfully created.' }
        format.json { render :show, status: :created, location: @att }
      else
        format.html { render :new }
        format.json { render json: @att.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atts/1
  # PATCH/PUT /atts/1.json
  def update
    respond_to do |format|
      if @att.update(att_params)
        format.html { redirect_to @att, notice: 'Att was successfully updated.' }
        format.json { render :show, status: :ok, location: @att }
      else
        format.html { render :edit }
        format.json { render json: @att.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atts/1
  # DELETE /atts/1.json
  def destroy
    @att.destroy
    respond_to do |format|
      format.html { redirect_to atts_url, notice: 'Att was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_att
      @att = Att.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def att_params
      params.require(:att).permit(:attendance)
    end
end
