class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.integer :exhibition_id
      t.integer :company_id
      t.string :year

      t.timestamps null: false
    end
  end
end
