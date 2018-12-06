class CommentSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  
  belongs_to :post
  attributes :id, :body
end
