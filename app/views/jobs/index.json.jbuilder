json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :date, :description, :city
  json.url job_url(job, format: :json)
end
