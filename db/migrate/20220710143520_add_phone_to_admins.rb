class AddPhoneToAdmins < ActiveRecord::Migration[7.0]
  def change
    add_column :admin_users, :phone, :string
  end
end
