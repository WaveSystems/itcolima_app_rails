ActiveAdmin.register User do
  filter :email

  index do |t|
    t.column :email
    t.column :created_at
    t.column :current_sign_in_at
    t.column :last_sign_in_ip
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.buttons
  end
end
