class ScrapsController < ApplicationController
  def index
    @scraps = Scrap.all.order('id DESC')
    @scrap = Scrap.new
  end

  def create
    @scrap = Scrap.new(scrap_params)
    if @scrap.save
      redirect_to scraps_path
    else
      @scraps = Scrap.all.order('id DESC')
      render :index
    end
  end

  private
    def scrap_params
      params.require(:scrap).permit(:body)
    end
end
