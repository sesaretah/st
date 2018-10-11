class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :profile_id
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
