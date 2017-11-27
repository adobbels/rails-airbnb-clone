class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.integer :post_code
      t.string :city
      t.string :phone_number
      t.string :sex
      t.integer :birth_date

      t.timestamps
    end
  end
end
