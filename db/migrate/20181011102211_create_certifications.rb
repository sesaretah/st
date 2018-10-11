class CreateCertifications < ActiveRecord::Migration
  def change
    create_table :certifications do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
