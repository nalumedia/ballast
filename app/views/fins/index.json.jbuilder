json.array!(@fins) do |fin|
  json.extract! fin, :id, :name, :type, :base, :height, :description, :customer_price, :ballast_price
  json.url fin_url(fin, format: :json)
end
