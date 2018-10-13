class AddAdderIdToMembership < ActiveRecord::Migration
  def change
    add_column :memberships, :adder_id, :integer
  end
end
