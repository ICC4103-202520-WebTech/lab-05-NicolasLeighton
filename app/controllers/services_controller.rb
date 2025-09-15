class ServicesController < ApplicationController
  def index
    @rooms = Service.all
  end

  def show
    @room = Service.find(params[:id])
  end
end
