require 'rails_helper'

RSpec.describe "subscribers routes" do
  routes { Waitlist::Engine.routes }
  specify { expect(get: 'subscribers/new').to route_to('waitlist/subscribers#new') }
  specify { expect(post: 'subscribers').to route_to('waitlist/subscribers#create') }
end
