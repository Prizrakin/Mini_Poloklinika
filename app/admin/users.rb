ActiveAdmin.register User do


  filter :id
  filter :email
  filter :phone
  filter :name
  filter :role


index do
  selectable_column
  column :id
  column :email
  column :phone
  column :name
  column :role
  actions
end
  
permit_params :email, :phone, :name, :role
end
