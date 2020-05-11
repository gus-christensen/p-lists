class AddRolesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :superadmin_role, :boolean, default: false
    add_column :users, :supervisor_role, :boolean, default: false
    add_column :users, :user_role, :boolean, default: true

    User.create! do |u|
        u.email     = 'admin@test.com'
        u.password    = 'password'
        u.superadmin_role = true
        u.user_role = false
    end
  end
end
