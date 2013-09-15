class ShitsController < ApplicationController
  
  before_action :set_shit, only: [:show, :edit, :update, :destroy]

  # GET /shits
  # GET /shits.json
  def index
    @shits = Shit.all
    @shit = Shit.last
  end

  # GET /shits/1
  # GET /shits/1.json
  def show
    @shits = Shit.all
  end

  # GET /shits/new
  def new
    @shit = Shit.new
  end

  # GET /shits/1/edit
  def edit
  end

  # POST /shits
  # POST /shits.json
  def create
    @shit = Shit.new(shit_params)

    respond_to do |format|
      if @shit.save
        format.html { redirect_to @shit, notice: 'Shit was successfully created.' }
        format.json { render action: 'show', status: :created, location: @shit }
      else
        format.html { render action: 'new' }
        format.json { render json: @shit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shits/1
  # PATCH/PUT /shits/1.json
  def update
    respond_to do |format|
      if @shit.update(shit_params)
        format.html { redirect_to @shit, notice: 'Shit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @shit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shits/1
  # DELETE /shits/1.json
  def destroy
    @shit.destroy
    respond_to do |format|
      format.html { redirect_to shits_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shit
      @shit = Shit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shit_params
      params.require(:shit).permit(:content)
    end
end
