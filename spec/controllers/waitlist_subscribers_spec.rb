require 'rails_helper'

RSpec.describe Waitlist::SubscribersController do
  routes { Waitlist::Engine.routes }

  describe '#new' do
    before do
      get :new
    end

    it { should respond_with(:ok) }
    it { should render_template :new }
  end

  describe '#create' do
    context 'in response to an html request' do
      context 'with valid address' do
        before do
          post :create, subscriber: { email: 'valid.address@thegarage.us' }
        end
        it { should redirect_to '/' }
        specify { expect(subject.request.flash[:notice]).to eq "Thanks for signing up!" }
      end

      context 'with valid address and params[:return_to]' do
        let(:redirect_url) { 'http://google.com' }
        before do
          post :create, subscriber: { email: 'valid.address@thegarage.us' }, return_to: redirect_url
        end
        it { should redirect_to redirect_url }
      end
      context 'with an invalid address' do
        before do
          post :create, subscriber: { email: "this isn't an email address" }
        end

        it { should render_template :new }
      end
    end

    context 'in reponse to an ajax (json) request' do
      context 'with valid address' do
        before do
          post :create, format: :json, subscriber: { email: "valid.address@thegarage.us" }
        end
        specify { expect(subject.request.flash).to be_empty }
      end

      context 'with invalid address' do
        before do
          post :create, format: :json, subscriber: { email: "this isn't an email address" }
        end

        it { should respond_with 422 }
      end
    end
  end
end
