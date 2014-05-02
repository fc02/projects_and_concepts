json.array!(@work_packages) do |work_package|
  json.extract! work_package, :id
  json.url work_package_url(work_package, format: :json)
end
