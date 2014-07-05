json.array!(@file_methods) do |file_method|
  json.extract! file_method, :id, :id, :created_by, :name, :description, :input, :output, :file_instance_id
  json.url file_method_url(file_method, format: :json)
end
