ActiveAdmin.register ListingReview do

 permit_params :create_listing_review_date, :reservations_id, :listing_review_accuracy, :listing_review_communication, :listing_review_cleanliness, :listing_review_location, :listing_review_check_in, :listing_review_value, :listing_review_text, :listing_id

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
