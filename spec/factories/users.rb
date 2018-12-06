FactoryBot.define do
  factory :user do
    first_name{FFaker::Name.first_name}
    last_name{FFaker::Name.last_name}
    age{20}
    address{FFaker::Address.city}
    role{"member"}
  end
end
