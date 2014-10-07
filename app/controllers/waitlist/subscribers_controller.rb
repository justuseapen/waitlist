require_dependency "waitlist/application_controller"

module Waitlist
  class SubscribersController < ApplicationController
    respond_to :html, :json
    def new
      @subscriber = Subscriber.new
    end

    def create
      @subscriber = Subscriber.new(subscriber_params)
      flash[:notice] = 'Thanks for signing up!' if @subscriber.save
      return_to = params[:return_to] || main_app.root_path
      respond_with @subscriber, location: return_to
    end

    def subscriber_params
      params.require(:subscriber).permit(:email)
    end
  end
end
