class FamilyMember < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :family_member, class_name: 'User'
end
