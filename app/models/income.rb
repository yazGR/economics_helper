class Income < ApplicationRecord
  belongs_to :user
  belongs_to :incometable, polymorphic: true
end
