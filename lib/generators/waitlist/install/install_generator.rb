require 'rails/generators'

module Waitlist
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def install_migration
      rake 'waitlist:install:migrations'
    end

    def mount_engine
      route 'mount Waitlist::Engine => "/waitlist", as: "waitlist"'
    end
  end
end
