class FixColumnUserId < ActiveRecord::Migration
  def self.up
    rename_column :staffs, :staff_id, :staff_name
  end

  def self.down
    # rename back if you need or do something else or do nothing
    rename_column :staffs, :staff_name, :staff_id
  end
end
