class FixColumnusernamedatatype < ActiveRecord::Migration
  def up
    change_column :staffs, :staff_name, :string
  end

  def down
    change_column :staffs, :staff_name, :integer
  end
end
