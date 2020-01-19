class AddColumnToEvents < ActiveRecord::Migration[5.2]
  def change
  	add_column :events, :payment_id, :integer
  	add_column :events, :end_date, :string
  	add_column :events, :payment_amount_based_on_enum, :integer
  	add_column :events, :total_seats, :integer
  	add_column :events, :is_super_user, :boolean
  	remove_column :events, :description, :string
  	add_column :events, :description, :text
  	remove_column :events, :event_date, :datetime
  	add_column :events, :start_date, :string
  end
end
