class User < ApplicationRecord
  # Direct associations

  has_many   :listings,
             :foreign_key => "host_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
