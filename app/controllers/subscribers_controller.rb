class SubscribersController < ApplicationController

  def index
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    @subscriber.save
    if @subscriber.save
      cookies[:saved_subscriber] = true
      redirect_to subscribers_path, notice: "Saved succesfully"

    else
      redirect_to subscribers_path, notice: "Name and email are required"
    end
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:name, :email)
  end
end
