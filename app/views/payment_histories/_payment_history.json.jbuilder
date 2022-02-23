json.extract! payment_history, :id, :amount, :user_id, :type, :created_at, :updated_at
json.url payment_history_url(payment_history, format: :json)
