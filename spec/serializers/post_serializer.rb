require "rails_helper"

RSpec.describe PostSerializer do
  describe "relationship" do
    it {expect have_many :comment}
  end
  describe "attributes" do
    let(:post) {build_stubbed(:post)}
    let(:post_serializer) {PostSerializer.new(post).serializable_hash}
    let(:subject) {JSON.parse(post_serializer.to_json)}
    it {expect(subject["data"]["attributes"]["id"]).to eq post.id}
    it {expect(subject["data"]["attributes"]["title"]).to eq post.title}
    it {expect(subject["data"]["attributes"]["content"]).to eq post.content}
    it {expect(subject["data"]["attributes"]["published"]).to eq nil}
    it {expect(subject["data"]["attributes"]["created_at"]).to eq nil}
    it {expect(subject["data"]["attributes"]["updated_at"]).to eq nil}
  end
end
