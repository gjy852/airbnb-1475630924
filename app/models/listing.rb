class Listing < ApplicationRecord
  # Direct associations

  has_many   :listing_photos,
             :dependent => :destroy

  has_many   :policies,
             :dependent => :destroy

  has_one    :bookmark,
             :dependent => :destroy

  has_many   :listing_availabilities,
             :class_name => "Reservation",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
