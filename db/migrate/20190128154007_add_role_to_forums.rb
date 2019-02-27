class AddRoleToForums < ActiveRecord::Migration[5.2]
  def change
    add_column :forums, :role, :integer, default: 0
  end
end
