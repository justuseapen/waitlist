require_dependency 'email_validator'
module Prelaunch
  class Subscriber < ActiveRecord::Base
    validates :email, presence: true, uniqueness: true, email: true
  end
end
