json.extract! quiz, :id, :name, :description, :teacher_id, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)