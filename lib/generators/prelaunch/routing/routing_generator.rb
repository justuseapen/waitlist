module Prelaunch
  class RoutingGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def mount_engine
      route 'mount Prelaunch::Engine => "/prelaunch"'
    end
  end
end
