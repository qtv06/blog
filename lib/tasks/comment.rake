namespace :comment do
  desc "Import comments data"
  task import: :environment do
    puts "Importing comments data"
    ActiveRecord::Base.transaction do
      Post.all.each do |post|
        author = FFaker::Name.unique.name
        body = FFaker::Lorem.paragraph
        post.comments.create! author: author, body: body
      end
    end
  end

end
