json.array!(@theses) do |thesis|
  json.extract! thesis, :id, :name, :abstract, :language, :defended
  json.url thesis_url(thesis, format: :json)
end
