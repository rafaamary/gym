json.extract! membership, :id, :name, :sobrenome, :phone, :email, :username, :created_at, :updated_at
json.url membership_url(membership, format: :json)
