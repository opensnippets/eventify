class CreateVenueAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :venue_addresses do |t|
      t.references :venue, foreign_key: true
      t.string :contact_number
      t.text :address
      t.string :country
      t.string :state
      t.string :pincode
      t.string :gst

      t.timestamps
    end
  end
end
