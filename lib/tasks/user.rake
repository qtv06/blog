namespace :user do
  desc "Import User Data"
  task import: :environment do
    "Importing..."
    5.times.each_with_index do |index|
      first_name = FFaker::Name.first_name
      last_name = FFaker::Name.last_name
      age = 20 + index
      address = FFaker::Address.city
      User.create! first_name: first_name, last_name: last_name,
        age: age, address: address, role: :member
    end
  end

end
