class AddStatusProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :phonenumber_status, :boolean
    add_column :profiles, :email_status, :boolean
  end
end
