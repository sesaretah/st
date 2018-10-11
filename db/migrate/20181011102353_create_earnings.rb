class CreateEarnings < ActiveRecord::Migration
  def change
    create_table :earnings do |t|
      t.integer :certification_id
      t.integer :company_id
      t.string :start_year
      t.string :end_year

      t.timestamps null: false
    end
  end
end
