json.extract! coach, :id, :name, :sobrenome, :phone, :email, :username, :created_at, :updated_at, :academy_id
json.url coach_url(coach, format: :json)
