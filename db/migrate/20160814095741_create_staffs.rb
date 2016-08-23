class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.integer :staff_id
      t.string :job_title
      t.text :other_duties
      t.string :url
      t.string :status
      t.datetime :employee_since
      t.datetime :employee_until

      t.timestamps null: false
    end
  end
end
