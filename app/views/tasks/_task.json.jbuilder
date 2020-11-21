json.extract! task, :id, :description, :user_id, :date, :created_at, :updated_at
json.url task_url(task, format: :json)
