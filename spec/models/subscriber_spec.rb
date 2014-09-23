require 'rails_helper'

RSpec.describe Prelaunch::Subscriber do
  describe '#email' do
    it { should have_db_column(:email) }
    it { should allow_value('valid.email@thegarage.us').for(:email) }
    it { should_not allow_value("this isn't an email address").for(:email) }
    it { should_not allow_value(nil).for(:email) }
  end
end
