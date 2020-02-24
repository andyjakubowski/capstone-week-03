json.extract! token, :id, :name, :value, :list_id, :category_id, :created_at, :updated_at
json.url list_token_url(@list, token, format: :json)
