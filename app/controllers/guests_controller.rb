class GuestsController < ApplicationController

  def index
    @guest = Guest.new
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new(guest_params)
    if @guest.save
      GuestMailer.call(@guest)
      redirect_to :root, notice: "your message was sent"
    else
      flash.now[:error] = "your message was not sent"
      render 'welcome/index'
    end
  end

  private

  def guest_params
    params.require(:guest).permit(:name, :email, :message)
  end
end
