ActiveAdmin.register Listing do

 permit_params :listing_title, :listing_description, :room_or_home, :listing_photos_id, :num_of_bedroom, :num_of_bathroom, :number_of_beds, :max_occupant, :city_id, :neighbourhood_id, :policies_id, :default_price, :host_id

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
