class CreatePackagingTypes < ActiveRecord::Migration
  def change
    create_table :packaging_types do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
