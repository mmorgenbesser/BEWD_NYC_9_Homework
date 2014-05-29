json.array!(@stocks) do |stock|
  json.extract! stock, :id, :name, :symbol, :shares, :price_paid
  json.url stock_url(stock, format: :json)
end
