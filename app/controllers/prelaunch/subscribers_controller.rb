require_dependency "prelaunch/application_controller"

module Prelaunch
  class SubscribersController < ApplicationController
    respond_to :html, :json
    def new
      @subscriber = Subscriber.new
    end

    def create
      @subscriber = Subscriber.new(subscriber_params)
      flash[:notice] = 'Thanks for signing up!' if @subscriber.save
      respond_with @subscriber, location: root_path
    end

    def subscriber_params
      params.require(:subscriber).permit(:email)
    end
  end
end