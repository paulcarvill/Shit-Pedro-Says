class ShitsController < ApplicationController
  
  before_action :set_shit, only: [:show]

  # GET /shits
  # GET /shits.json
  def index
    @shits = Shit.all.order('id ASC')
  end

  # GET /shits/1
  # GET /shits/1.json
  def show
    @shits = Shit.all
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
