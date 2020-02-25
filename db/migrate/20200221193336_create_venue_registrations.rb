class CreateVenueRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :venue_registrations do |t|
      t.references :user, foreign_key: true
      t.references :venue, foreign_key: true
      t.string :phone_number
      t.string :name
      t.date :function_date

      t.timestamps
    end
  end
end
