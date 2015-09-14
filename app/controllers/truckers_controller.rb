class TruckersController < ApplicationController
  def new
    @trucker = Trucker.new
  end

  def create
    Trucker.create(trucker_params)
  end


  private

  def trucker_params
    params.require(:trucker).permit(:name)
  end
end