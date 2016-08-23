class AddAttachmentStaffImgToStaffs < ActiveRecord::Migration
  def self.up
    change_table :staffs do |t|
      t.attachment :staff_img
    end
  end

  def self.down
    remove_attachment :staffs, :staff_img
  end
end
