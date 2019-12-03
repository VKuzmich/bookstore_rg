FactoryBot.define do
  factory :image do
    image { File.open("app/assets/images/#{rand(1..23)}.jpg") }
  end
end
