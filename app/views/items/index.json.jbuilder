json.array!(@items) do |item|
  json.extract! item, :id, :name, :category_id, :description, :quantity, :quantity_remaining, :instructions, :event_id
  json.url item_url(item, format: :json)
end
