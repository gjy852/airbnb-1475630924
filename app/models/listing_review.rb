class ListingReview < ApplicationRecord
  # Direct associations

  belongs_to :listing_availability,
             :class_name => "Reservation",
             :foreign_key => "reservations_id"

  # Indirect associations

  has_many   :listing,
             :through => :listing_availability,
             :source => :listing

  # Validations

end
