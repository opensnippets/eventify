class CreateVenueRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :venue_registrations do |t|
      t.references :user, foreign_key: true
      t.references :venue, foreign_key: true

      t.timestamps
    end
  end
end
