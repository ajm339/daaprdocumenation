json.array!(@file_instances) do |file_instance|
  json.extract! file_instance, :id, :file_type, :name, :description, :id, :user_id
  json.url file_instance_url(file_instance, format: :json)
end
