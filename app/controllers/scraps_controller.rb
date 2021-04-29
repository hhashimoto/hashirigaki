class ScrapsController < ApplicationController
  def index
    @scraps = Scrap.all.order('id DESC')
  end
end
