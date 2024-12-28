json.extract! expense, :id, :user_id, :expensetable_id, :expensetable_type, :amount, :date, :note, :created_at, :updated_at
json.url expense_url(expense, format: :json)
