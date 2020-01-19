class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.integer :user_id
      t.datetime :event_date
      t.text :location
      t.string :contact_numbers

      t.timestamps
    end
  end
end
