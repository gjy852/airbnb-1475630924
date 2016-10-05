class Message < ApplicationRecord
  # Direct associations

  belongs_to :initiated_by,
             :class_name => "User"

  # Indirect associations

  # Validations

end
