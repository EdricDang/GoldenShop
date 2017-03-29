FactoryGirl.define do
  factory :product do
    image Rack::Test::UploadedFile.new(Rails.root + 'spec/fixtures/spec.jpg', 'image/jpg')
    name "MyString"
    description "MyText"
    price 1
    year 1
    category_id "MyString"
    user_id "MyString"
  end
end
