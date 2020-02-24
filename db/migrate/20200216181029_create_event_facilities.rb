class CreateEventFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :event_facilities do |t|
      t.belongs_to :event
      t.belongs_to :facility
      t.timestamps
    end
  end
end
