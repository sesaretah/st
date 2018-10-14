class AddCreatorIdToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :creator_id, :integer
  end
end
