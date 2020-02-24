class AddAttachmentVenueProfileToVenueImages < ActiveRecord::Migration[5.2]
  def self.up
    change_table :venue_images do |t|
      t.attachment :venue_profile
    end
  end

  def self.down
    remove_attachment :venue_images, :venue_profile
  end
end
