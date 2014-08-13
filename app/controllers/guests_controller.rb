class GuestsController < ApplicationController
  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new(params[:guest])
    if @guest.save
      redirect_to :root, notice: "your message was sent"
    else
      flash.now[:error] = "your message was not sent"
      render 'welcome/index'
    end
  end
end