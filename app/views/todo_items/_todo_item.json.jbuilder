json.extract! todo_item, :id, :title, :completed, :created_at, :updated_at
json.url todo_item_url(todo_item, format: :json)
