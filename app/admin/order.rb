ActiveAdmin.register Order do
  permit_params :email, :string, :subtotal, :tax, :shipping, :total, :order_status
  index do
    selectable_column
    id_column
    column :email
    column :subtotal
    column :tax
    column :shipping
    column :total
    column :order_status
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