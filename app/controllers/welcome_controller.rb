class WelcomeController < ApplicationController
  def index
    @guest = Guest.new
  end
end
