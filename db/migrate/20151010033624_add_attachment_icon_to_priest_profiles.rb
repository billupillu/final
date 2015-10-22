class AddAttachmentIconToPriestProfiles < ActiveRecord::Migration
  def self.up
    change_table :priest_profiles do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :priest_profiles, :icon
  end
end
