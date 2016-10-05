class GuestReview < ApplicationRecord
  # Direct associations

  belongs_to :request

  # Indirect associations

  has_many   :requestor,
             :through => :request,
             :source => :requestor

  # Validations

end
