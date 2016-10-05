class User < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  has_many   :requests,
             :foreign_key => "requestor_id",
             :dependent => :destroy

  has_many   :listings,
             :foreign_key => "host_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
