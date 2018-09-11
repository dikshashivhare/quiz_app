json.extract! topic_quiz, :id, :name, :description, :rules, :created_at, :updated_at
json.url topic_quiz_url(topic_quiz, format: :json)
