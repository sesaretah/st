class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.text :headquarter_address
      t.text :shop_address
      t.text :factory_address
      t.string :telphone
      t.string :fax
      t.string :email
      t.string :telegram_channel
      t.string :instagram_page
      t.string :year_established
      t.string :total_employees
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
