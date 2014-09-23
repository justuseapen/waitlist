require 'rails_helper'

RSpec.describe "subscribers routes" do
  routes { Prelaunch::Engine.routes }
  specify { expect(get: 'subscribers/new').to route_to('prelaunch/subscribers#new') }
  specify { expect(post: 'subscribers').to route_to('prelaunch/subscribers#create') }
end
