ActiveAdmin.register Blog do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # form partial: 'form'
  #
  permit_params :text, :image, :title
  form do |f|
    f.inputs do
      f.input :text
      f.input :image, as: :file
      f.input :title
    end
    f.actions
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:text, :image, :title]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
