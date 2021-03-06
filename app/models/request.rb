class Request < ApplicationRecord
  # Direct associations

  belongs_to :requestor,
             :class_name => "User"

  has_one    :review_id,
             :class_name => "GuestReview",
             :dependent => :destroy

  has_one    :listing_availability,
             :class_name => "Reservation",
             :foreign_key => "booked_yes_or_no_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
