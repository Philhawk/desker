class AddAttachmentThumbnailToDesks < ActiveRecord::Migration
  def self.up
    change_table :desks do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    remove_attachment :desks, :thumbnail
  end
end
