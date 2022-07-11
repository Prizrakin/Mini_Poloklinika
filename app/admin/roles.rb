ActiveAdmin.register Role do

  filter :title
  filter :id

  index do
    selectable_column
    column :id
    column :title
    actions
  end

  permit_params :title
  
end
