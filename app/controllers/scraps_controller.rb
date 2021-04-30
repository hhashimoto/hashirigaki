class ScrapsController < ApplicationController
  def index
    @scraps = recent_scraps
    @scrap = Scrap.new
  end

  def create
    @scrap = Scrap.new(scrap_params)
    if @scrap.save
      redirect_to scraps_path
    else
      @scraps = recent_scraps
      render :index
    end
  end

  private
    def scrap_params
      params.require(:scrap).permit(:body)
    end

    def recent_scraps
      Scrap.where(created_at: (Time.now - 1.day)..Time.now).order(id: :desc)
    end
end
