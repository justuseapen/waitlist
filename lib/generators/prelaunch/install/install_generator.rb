require 'rails/generators'

module Prelaunch
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def install_migration
      rake 'prelaunch:install:migrations'
    end

    def mount_engine
      route 'mount Prelaunch::Engine => "/prelaunch", as: "prelaunch"'
    end
  end
end
