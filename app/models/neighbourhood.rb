class Neighbourhood < ApplicationRecord
  # Direct associations

  has_many   :listings,
             :dependent => :destroy

  belongs_to :city

  # Indirect associations

  # Validations

end
