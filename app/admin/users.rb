ActiveAdmin.register User do


  filter :id
  filter :email
  filter :phone
  filter :name
  filter :role_id, :as => :select, :collection => Role.all.collect {|r| [r.title, r.id]}

index do
  selectable_column
  column :id
  column :email
  column :phone
  column :name
  #column :role, link: true do |i|
  #  i.role ? i.role.title : "nil"
#end

  column :role_id do |i|
    i.role_id
    if i.role_id.to_i!=0
    @role = Role.find(i.role_id.to_s)
    @role.title
    else 
      ""
    end

  end
  

  
  
  actions
end
  
permit_params :email, :phone, :name, :role_id

form do |f| 
  f.inputs do 
    f.semantic_errors *f.object.errors.attribute_names
    f.input :email
    f.input :phone
    f.input :name 
    f.input :role, :as => :select, :collection => Role.all.map {|r| [r.title.to_s, r.id]}
    f.actions
  end 
end

controller do
  def create
    @role = Role.new(permit_params[:role_id])
    if @role.save
    end
  end
end

end
