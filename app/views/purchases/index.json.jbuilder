json.array!(@purchases) do |purchase|
  json.extract! purchase, :id, :email, :amount, :description, :currency, :customer_id, :card, :product_id
  json.url purchase_url(purchase, format: :json)
end
