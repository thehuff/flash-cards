class Tag < ActiveRecord::Base
  belongs_to :user

  # TODO polymorphic taggable fk column
end
