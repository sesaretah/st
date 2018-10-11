class CreateExhibitions < ActiveRecord::Migration
  def change
    create_table :exhibitions do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
