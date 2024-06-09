ActiveAdmin.register Lead do
  permit_params :email, :password, :password_confirmation

  index do
    id_column
    column :name
    column :email
    column :phone_no
    column :universal_leadid
    actions defaults: false do |lead|
      link_to 'View', admin_lead_path(lead), class: 'view_link'
    end
  end

  filter :name
  filter :email
  filter :phone_no
  filter :universal_leadid

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :phone_no
      f.input :universal_leadid
    end
    f.actions
  end

end
