class PostSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  # has_many :comments, links: {
  #   self: :title,
  #   related: -> (object) {
  #     "http://localhost:3000/comments/#{object.id}"
  #   }
  # }
  attributes :id, :title, :content
  # attributes :comments do |object|
  #   comments = CommentSerializer.new(object.comments).serializable_hash
  # end
end
