class City < ApplicationRecord
  # Direct associations

  has_many   :neighbourhoods,
             :dependent => :destroy

  has_many   :listings,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
