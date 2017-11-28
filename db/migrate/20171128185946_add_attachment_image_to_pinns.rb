class AddAttachmentImageToPinns < ActiveRecord::Migration[5.1]
  def self.up
    change_table :pinns do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :pinns, :image
  end
end
