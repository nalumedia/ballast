json.array!(@delivertos) do |deliverto|
  json.extract! deliverto, :id, :deliverto_street, :deliverto_city, :delivertto_state, :deliverto_zip, :deliverto_country, :purchase_id, :deliverto_instructions
  json.url deliverto_url(deliverto, format: :json)
end
