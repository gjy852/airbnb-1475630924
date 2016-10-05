class User < ApplicationRecord
  # Direct associations

  has_many   :received_messages,
             :class_name => "Message",
             :foreign_key => "recipient_id",
             :dependent => :destroy

  has_many   :sent_messages,
             :class_name => "Message",
             :foreign_key => "initiated_by_id",
             :dependent => :destroy

  has_many   :bookmarks,
             :dependent => :destroy

  has_many   :requests,
             :foreign_key => "requestor_id",
             :dependent => :destroy

  has_many   :listings,
             :foreign_key => "host_id",
             :dependent => :destroy

  # Indirect associations

  has_one    :review_ids,
             :through => :requests,
             :source => :review_id

  # Validations

end
