class AddsProfileToFlat < ActiveRecord::Migration[5.0]
  def change
    add_reference :flats, :profile, foreign_key: true
  end
end
