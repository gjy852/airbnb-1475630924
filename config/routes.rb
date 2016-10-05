Rails.application.routes.draw do
  # Routes for the Listing_photo resource:
  # CREATE
  get "/listing_photos/new", :controller => "listing_photos", :action => "new"
  post "/create_listing_photo", :controller => "listing_photos", :action => "create"

  # READ
  get "/listing_photos", :controller => "listing_photos", :action => "index"
  get "/listing_photos/:id", :controller => "listing_photos", :action => "show"

  # UPDATE
  get "/listing_photos/:id/edit", :controller => "listing_photos", :action => "edit"
  post "/update_listing_photo/:id", :controller => "listing_photos", :action => "update"

  # DELETE
  get "/delete_listing_photo/:id", :controller => "listing_photos", :action => "destroy"
  #------------------------------

  # Routes for the Neighbourhood resource:
  # CREATE
  get "/neighbourhoods/new", :controller => "neighbourhoods", :action => "new"
  post "/create_neighbourhood", :controller => "neighbourhoods", :action => "create"

  # READ
  get "/neighbourhoods", :controller => "neighbourhoods", :action => "index"
  get "/neighbourhoods/:id", :controller => "neighbourhoods", :action => "show"

  # UPDATE
  get "/neighbourhoods/:id/edit", :controller => "neighbourhoods", :action => "edit"
  post "/update_neighbourhood/:id", :controller => "neighbourhoods", :action => "update"

  # DELETE
  get "/delete_neighbourhood/:id", :controller => "neighbourhoods", :action => "destroy"
  #------------------------------

  # Routes for the City resource:
  # CREATE
  get "/cities/new", :controller => "cities", :action => "new"
  post "/create_city", :controller => "cities", :action => "create"

  # READ
  get "/cities", :controller => "cities", :action => "index"
  get "/cities/:id", :controller => "cities", :action => "show"

  # UPDATE
  get "/cities/:id/edit", :controller => "cities", :action => "edit"
  post "/update_city/:id", :controller => "cities", :action => "update"

  # DELETE
  get "/delete_city/:id", :controller => "cities", :action => "destroy"
  #------------------------------

  # Routes for the Listing_review resource:
  # CREATE
  get "/listing_reviews/new", :controller => "listing_reviews", :action => "new"
  post "/create_listing_review", :controller => "listing_reviews", :action => "create"

  # READ
  get "/listing_reviews", :controller => "listing_reviews", :action => "index"
  get "/listing_reviews/:id", :controller => "listing_reviews", :action => "show"

  # UPDATE
  get "/listing_reviews/:id/edit", :controller => "listing_reviews", :action => "edit"
  post "/update_listing_review/:id", :controller => "listing_reviews", :action => "update"

  # DELETE
  get "/delete_listing_review/:id", :controller => "listing_reviews", :action => "destroy"
  #------------------------------

  # Routes for the Bookmark resource:
  # CREATE
  get "/bookmarks/new", :controller => "bookmarks", :action => "new"
  post "/create_bookmark", :controller => "bookmarks", :action => "create"

  # READ
  get "/bookmarks", :controller => "bookmarks", :action => "index"
  get "/bookmarks/:id", :controller => "bookmarks", :action => "show"

  # UPDATE
  get "/bookmarks/:id/edit", :controller => "bookmarks", :action => "edit"
  post "/update_bookmark/:id", :controller => "bookmarks", :action => "update"

  # DELETE
  get "/delete_bookmark/:id", :controller => "bookmarks", :action => "destroy"
  #------------------------------

  # Routes for the Message resource:
  # CREATE
  get "/messages/new", :controller => "messages", :action => "new"
  post "/create_message", :controller => "messages", :action => "create"

  # READ
  get "/messages", :controller => "messages", :action => "index"
  get "/messages/:id", :controller => "messages", :action => "show"

  # UPDATE
  get "/messages/:id/edit", :controller => "messages", :action => "edit"
  post "/update_message/:id", :controller => "messages", :action => "update"

  # DELETE
  get "/delete_message/:id", :controller => "messages", :action => "destroy"
  #------------------------------

  # Routes for the Guest_review resource:
  # CREATE
  get "/guest_reviews/new", :controller => "guest_reviews", :action => "new"
  post "/create_guest_review", :controller => "guest_reviews", :action => "create"

  # READ
  get "/guest_reviews", :controller => "guest_reviews", :action => "index"
  get "/guest_reviews/:id", :controller => "guest_reviews", :action => "show"

  # UPDATE
  get "/guest_reviews/:id/edit", :controller => "guest_reviews", :action => "edit"
  post "/update_guest_review/:id", :controller => "guest_reviews", :action => "update"

  # DELETE
  get "/delete_guest_review/:id", :controller => "guest_reviews", :action => "destroy"
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get "/users/new", :controller => "users", :action => "new"
  post "/create_user", :controller => "users", :action => "create"

  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  get "/users/:id/edit", :controller => "users", :action => "edit"
  post "/update_user/:id", :controller => "users", :action => "update"

  # DELETE
  get "/delete_user/:id", :controller => "users", :action => "destroy"
  #------------------------------

  # Routes for the Request resource:
  # CREATE
  get "/requests/new", :controller => "requests", :action => "new"
  post "/create_request", :controller => "requests", :action => "create"

  # READ
  get "/requests", :controller => "requests", :action => "index"
  get "/requests/:id", :controller => "requests", :action => "show"

  # UPDATE
  get "/requests/:id/edit", :controller => "requests", :action => "edit"
  post "/update_request/:id", :controller => "requests", :action => "update"

  # DELETE
  get "/delete_request/:id", :controller => "requests", :action => "destroy"
  #------------------------------

  # Routes for the Reservation resource:
  # CREATE
  get "/reservations/new", :controller => "reservations", :action => "new"
  post "/create_reservation", :controller => "reservations", :action => "create"

  # READ
  get "/reservations", :controller => "reservations", :action => "index"
  get "/reservations/:id", :controller => "reservations", :action => "show"

  # UPDATE
  get "/reservations/:id/edit", :controller => "reservations", :action => "edit"
  post "/update_reservation/:id", :controller => "reservations", :action => "update"

  # DELETE
  get "/delete_reservation/:id", :controller => "reservations", :action => "destroy"
  #------------------------------

  # Routes for the Listing resource:
  # CREATE
  get "/listings/new", :controller => "listings", :action => "new"
  post "/create_listing", :controller => "listings", :action => "create"

  # READ
  get "/listings", :controller => "listings", :action => "index"
  get "/listings/:id", :controller => "listings", :action => "show"

  # UPDATE
  get "/listings/:id/edit", :controller => "listings", :action => "edit"
  post "/update_listing/:id", :controller => "listings", :action => "update"

  # DELETE
  get "/delete_listing/:id", :controller => "listings", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
