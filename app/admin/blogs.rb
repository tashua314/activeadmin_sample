ActiveAdmin.register Blog do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment

  controller do
    def update
      blog = Blog.find(permitted_params[:id])
      blog.update!(permitted_params[:blog])

      flash[:notice] = 'successed.'
      redirect_to "/admin/blogs/#{blog.id}"
    end
  end

  show do
    attributes_table do
      row :text
      row :avatar do |ad|
        # image_tag url_for ad.avatar
        image_tag url_for ad.avatar.variant(resize:'200x200').processed if ad.avatar.attached?

      end
      row :title
    end
    active_admin_comments
  end

  permit_params :id, :text, :avatar, :title
  form do |f|
    f.inputs do
      f.input :text
      f.input :avatar, as: :file
      f.input :title
    end
    f.actions
  end
  #
  # or
  #
  permit_params do
    permitted = [:id, :text, :avatar, :title]
    permitted
  end
  
end
