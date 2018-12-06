FactoryBot.define do
  factory :post do
    title{FFaker::Book.title}
    content{FFaker::LoremIE.paragraph}
    published{false}
  end
end
