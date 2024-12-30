class Income < ApplicationRecord
  belongs_to :user
  belongs_to :incometable, polymorphic: true

  # Use :to_global_id to populate the form
def incometable_gid
  incometable&.to_global_id
end

# Set the :incometable from a Global ID (handles the form submission)
def incometable_gid=(gid)
  self.incometable = GlobalID::Locator.locate gid
end
end
