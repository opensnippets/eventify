class AddAttachmentEventPosterToEvents < ActiveRecord::Migration[5.2]
  def self.up
    change_table :events do |t|
      t.attachment :event_poster
    end
  end

  def self.down
    remove_attachment :events, :event_poster
  end
end
