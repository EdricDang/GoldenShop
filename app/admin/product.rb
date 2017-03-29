ActiveAdmin.register Product do
  permit_params :image, :name, :description, :price, :year, :category_id, :user_idindex
  index do
    selectable_column
    id_column
    column :name
    column :image
    column :description
    column :price
    column :year
    actions
    actions
  end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
