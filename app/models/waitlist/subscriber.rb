require_dependency 'email_validator'
module Waitlist
  class Subscriber < ActiveRecord::Base
    validates :email, presence: true, uniqueness: true, email: true
  end
end
