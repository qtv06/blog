namespace :post do
  desc "Import data post"
  task import: :environment do
    puts "Importing posts data ....."
    Post.transaction do
      5.times.each_with_index do |index|
        title = "Post #{index}"
        content = "Post content #{index}"
        Post.create! title: title, content: content
      end
    end
  end

end
