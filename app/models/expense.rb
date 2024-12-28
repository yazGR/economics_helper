class Expense < ApplicationRecord
  belongs_to :user
  belongs_to :expensetable, polymorphic: true
end
