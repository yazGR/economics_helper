class User < ApplicationRecord
  has_secure_password
  has_many :user_family_member, :class_name => "FamilyMember", :foreign_key => "user_id"
  has_many :family_member, :class_name => "FamilyMember", :foreign_key => "family_member_id"

  enum gender: [:female, :male]
  translate_enum :gender

  enum language: [:en, :fr, :es]
  translate_enum :language

  enum role: [:admin, :user,:user_family]
  translate_enum :role
end
