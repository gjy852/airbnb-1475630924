class Request < ApplicationRecord
  # Direct associations

  has_one    :listing_availability,
             :class_name => "Reservation",
             :foreign_key => "booked_yes_or_no_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
