class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :token

      t.timestamps null: false
    end
  end
end
