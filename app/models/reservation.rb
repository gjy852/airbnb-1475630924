class Reservation < ApplicationRecord
  # Direct associations

  belongs_to :booked_yes_or_no,
             :class_name => "Request"

  has_one    :listing_review,
             :foreign_key => "reservations_id",
             :dependent => :destroy

  belongs_to :listing

  # Indirect associations

  # Validations

end
