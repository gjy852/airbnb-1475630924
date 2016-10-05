class Reservation < ApplicationRecord
  # Direct associations

  has_one    :listing_review,
             :foreign_key => "reservations_id",
             :dependent => :destroy

  belongs_to :listing

  # Indirect associations

  # Validations

end
