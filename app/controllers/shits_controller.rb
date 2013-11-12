class ShitsController < ApplicationController
  
  before_action :set_shit, only: [:show]

  # mainly so i can get the Shake For Shit Pebble app working :)
  def random
    @shit = Shit.offset(rand(Shit.count)).first
    respond_to do |format|
      format.json { render :template => "shits/show.json.jbuilder" }
    end
  end

  def index
    @shits = Shit.all.order('id ASC')
  end

  def show
    @shits = Shit.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shit
      @shit = Shit.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shit_params
      params.require(:shit).permit(:content)
    end
end
