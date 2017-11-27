class CreateFlatOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :flat_options do |t|
      t.string :optional_description
      t.references :flat, foreign_key: true
      t.references :feature, foreign_key: true

      t.timestamps
    end
  end
end
