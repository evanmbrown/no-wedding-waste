json.array!(@companies) do |company|
  json.extract! company, :id, :name, :description, :location, :is_charity, :user_id, :company_type
  json.url company_url(company, format: :json)
end
