class CreateHonors < ActiveRecord::Migration
  def change
    create_table :honors do |t|
      t.string :title
      t.string :year
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
