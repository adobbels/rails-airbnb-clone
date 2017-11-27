class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :content
      t.string :title_review
      t.references :profile, foreign_key: true
      t.references :flat, foreign_key: true

      t.timestamps
    end
  end
end
