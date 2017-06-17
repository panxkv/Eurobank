class AddStatusToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :status, :integer
  end
end
