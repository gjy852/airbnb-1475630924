class Listing < ApplicationRecord
  # Direct associations

  has_many   :listing_availabilities,
             :class_name => "Reservation",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
