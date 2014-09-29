class CreateWaitlistSubscribers < ActiveRecord::Migration
  def change
    create_table :waitlist_subscribers do |t|
      t.string :email
      t.timestamps
    end
  end
end
