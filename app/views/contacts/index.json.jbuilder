json.array!(@contacts) do |contact|
  json.extract! contact, :id, :contact_name, :contact_email, :contact_description, :contact_status
  json.url contact_url(contact, format: :json)
end
