class AddAttachmentMypicToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :mypic
    end
  end

  def self.down
    remove_attachment :users, :mypic
  end
end
