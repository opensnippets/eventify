class AddVenueIdToFacility < ActiveRecord::Migration[5.2]
  def change
    add_column :facilities, :venue_id, :integer
    add_index :facilities, :venue_id
  end
end
