json.array!(@ab_tests) do |ab_test|
  json.extract! ab_test, :id
  json.url ab_test_url(ab_test, format: :json)
end
