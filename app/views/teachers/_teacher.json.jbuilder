json.extract! teacher, :id, :email, :password, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)