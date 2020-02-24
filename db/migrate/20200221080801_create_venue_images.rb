class CreateVenueImages < ActiveRecord::Migration[5.2]
  def change
    create_table :venue_images do |t|
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
