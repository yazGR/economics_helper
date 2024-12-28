class User < ApplicationRecord
  has_secure_password

  enum gender: [:female, :male]
  translate_enum :gender

  enum language: [:en, :fr, :es]
  translate_enum :language
end
