class AddUserIdToStaff < ActiveRecord::Migration
  def change
  	add_column :staffs, :user_id, :integer
  end
end
